local assets =
{
    Asset( "ANIM", "anim/noelle_vision.zip" ),
}

local function fn ()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddLight()
    inst.entity:AddNetwork()

    MakeInventoryPhysics( inst )

    inst.AnimState:SetRayTestOnBB( true )
    inst.AnimState:SetBank( "noelle_vision" )
    inst.AnimState:SetBuild( "noelle_vision" )
    inst.AnimState:PlayAnimation( "idle" )

    inst.pickupsound = "rock"

    inst.Light:SetFalloff( 0.7 )
    inst.Light:SetIntensity( 0.5 )
    inst.Light:SetRadius( 0.5 )
    inst.Light:SetColour( 237/255, 237/255, 209/255 )
    inst.Light:Enable( true )

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