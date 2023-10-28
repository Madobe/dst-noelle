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
    inst.Light:SetRadius( 0.1 )
    inst.Light:SetColour( 255/255, 170/255, 0/255 )
    inst.Light:Enable( true )

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent( "inspectable" )

    inst:AddComponent( "inventoryitem" )
    inst.components.inventoryitem.imagename = "noelle_vision"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/noelle_vision.xml"

    MakeHauntableLaunch( inst )

    return inst
end

return Prefab( "noelle_vision", fn, assets )