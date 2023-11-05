local function OnDropped ( inst )
	local rechargeable = inst.components.rechargeable

	if rechargeable ~= nil and not rechargeable:IsCharged() then
		inst.AnimState:PlayAnimation( rechargeable.chargetime > 4 and "cooldown_long" or "cooldown_short" )
		local anim_length = inst.AnimState:GetCurrentAnimationLength()
		inst.AnimState:SetTime( anim_length * rechargeable:GetPercent() )
		inst.AnimState:SetDeltaTimeMultiplier( anim_length / rechargeable.chargetime )
	end
end

local function OnCharged ( inst )
	if inst.components.usablevision ~= nil then
		inst.components.usablevision.inactive = true
		inst.AnimState:PlayAnimation( "idle" )
	end
end

local function OnDischarged ( inst )
	if inst.components.usablevision ~= nil then
		inst.components.usablevision.inactive = false
	end

	OnDropped( inst )
end

local function GetStatus ( inst )
	return ( inst.components.rechargeable ~= nil and not inst.components.rechargeable:IsCharged() ) and "RECHARGING"
			or nil
end

local function common_fn ( bank, build, DoCastSpell, cast_from_inventory, tags, common_postinit, master_postinit )
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()

	MakeInventoryPhysics( inst )

	inst.AnimState:SetBank( bank )
	inst.AnimState:SetBuild( build )
	inst.AnimState:PlayAnimation("idle")

	inst.scrapbook_deps = {}

	MakeInventoryFloatable( inst, "small", 0.05, {1.2, 0.75, 1.2} )

	inst:AddTag( "usable_vision" )
	inst:AddTag( "cattoy" )

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

	inst:AddComponent( "lootdropper" )

	inst:AddComponent( "inventoryitem" )
	inst.components.inventoryitem:SetOnDroppedFn( OnDropped )

	inst:AddComponent( "rechargeable" )
	inst.components.rechargeable:SetOnDischargedFn( OnDischarged )
	inst.components.rechargeable:SetOnChargedFn( OnCharged )

	inst:AddComponent( "usable_vision" )
	inst.components.usablevision.DoCastSpell = DoCastSpell

	inst:AddComponent( "inspectable" )
	inst.components.inspectable.getstatus = GetStatus

	MakeHauntableLaunch( inst )

	if master_postinit ~= nil then
		master_postinit( inst )
	end

	return inst
end

-------------------------------------------------------------------------------

return {
	common_fn = common_fn
}
