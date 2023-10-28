local assets =
{
    Asset( "ANIM", "anim/noelle_vision.zip" ),
}

local function fn ()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics( inst )

    inst.AnimState:SetRayTestOnBB( true )
    inst.AnimState:SetBank( "noelle_vision" )
    inst.AnimState:SetBuild( "noelle_vision" )
    inst.AnimState:PlayAnimation( "idle" )

    inst.pickupsound = "rock"

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent( "inspectable" )
    inst:AddComponent( "inventoryitem" )

    MakeHauntableLaunch( inst )

    return inst
end

return Prefab( "noelle_vision", fn, assets )