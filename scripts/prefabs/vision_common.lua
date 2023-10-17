---Plays when the vision comes off cooldown.
---@param inst table: The vision.
local function OnCharged ( inst )
	if inst.components.genshinvision ~= nil then
		inst.components.genshinvision.inactive = true
		inst.AnimState:PlayAnimation( "idle" )
	end
end

---Plays when the vision goes on cooldown.
---@param inst table: The vision.
local function OnDischarged ( inst )
	if inst.components.genshinvision ~= nil then
		inst.components.genshinvision.inactive = false
	end
end

---Returns the inspectable status.
---@param inst table: The vision.
---@return string|nil
local function GetStatus ( inst )
	return ( inst.components.rechargeable ~= nil and not inst.components.rechargeable:IsCharged() ) and "RECHARGING"
			or nil
end

---The initialization function for any visions using this.
---@param bank string: The anim bank.
---@param build string: The anim build.
---@param DoCastVision function: The function that will be run when right-clicking the vision.
---@param tags? table: The array of tags.
---@param common_postinit? function: The client-side post-init function.
---@param master_postinit? function: The server-side post-init function.
---@return table
local function common_fn ( bank, build, DoCastVision, tags, common_postinit, master_postinit )
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()
	inst.entity:AddLight()

	MakeInventoryPhysics( inst )

	inst.AnimState:SetBank( bank )
	inst.AnimState:SetBuild( build )
	inst.AnimState:PlayAnimation( "idle" )

    inst.Light:SetFalloff( 0.7 )
    inst.Light:SetIntensity( 0.5 )
    inst.Light:SetRadius( 0.1 )
    inst.Light:SetColour( 255/255, 170/255, 0/255 )
    inst.Light:Enable( true )

    inst.pickupsound = "rock"
	inst.scrapbook_deps = {}

	MakeInventoryFloatable( inst, "med", 0.05, { 0.75, 0.4, 0.75 } )

	inst:AddTag( "cattoy" )
	inst:AddTag( "genshinvision" )
    inst:AddTag( "nosteal" )

	if tags ~= nil then
		for _, tag in ipairs( tags ) do
			inst:AddTag( tag )
		end
	end

	if common_postinit ~= nil then
		common_postinit( inst )
	end

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
			return inst
	end

	inst:AddComponent( "inspectable" )
	inst.components.inspectable.getstatus = GetStatus

	inst:AddComponent( "inventoryitem" )
    inst.components.inventoryitem.imagename = "noelle_vision"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/noelle_vision.xml"
    inst.replica.inventoryitem:SetCanOnlyGoInPocket( true )

	inst:AddComponent( "rechargeable" )
	inst.components.rechargeable:SetOnDischargedFn( OnDischarged )
	inst.components.rechargeable:SetOnChargedFn( OnCharged )

	inst:AddComponent( "genshinvision" )
	inst.components.genshinvision.DoCastVision = DoCastVision

	MakeHauntableLaunch( inst )

	if master_postinit ~= nil then
		master_postinit( inst )
	end

	return inst
end

return {
	common_fn = common_fn
}
