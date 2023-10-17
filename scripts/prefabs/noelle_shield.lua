local assets =
{
   Asset( "ANIM", "anim/noelle_shield.zip" ),
}

local MAX_LIGHT_FRAME = 6

---Updates the lighting from the shield.
---@param inst table: The shield effects.
---@param dframes number: The amount of frames to adjust by.
local function OnUpdateLight ( inst, dframes )
    local done

    if inst._islighton:value() then
        local frame = inst._lightframe:value() + dframes
        done = frame >= MAX_LIGHT_FRAME
        inst._lightframe:set_local( done and MAX_LIGHT_FRAME or frame )
    else
        local frame = inst._lightframe:value() - dframes
        done = frame <= 0
        inst._lightframe:set_local( done and 0 or frame )
    end

    inst.Light:SetRadius( 3 * inst._lightframe:value() / MAX_LIGHT_FRAME )

    if done then
        inst._lighttask:Cancel()
        inst._lighttask = nil
    end
end

---Triggered when the light value changes. This means that the client has changed but the server
---has not yet been updated to match.
---@param inst table: The shield effects.
local function OnLightDirty ( inst )
    if inst._lighttask == nil then
        inst._lighttask = inst:DoPeriodicTask( FRAMES, OnUpdateLight, nil, 1 )
    end

    OnUpdateLight( inst, 0 )
end

---Turns off the effects.
---@param inst table: The shield effects.
local function kill_fx ( inst )
    inst.AnimState:PlayAnimation( "close" )
    inst._islighton:set( false )
    inst._lightframe:set( inst._lightframe:value() )
    OnLightDirty( inst )

    inst:DoTaskInTime( 0.6, inst.Remove )
end

---Initialization function for the prefab.
---@return table
local function fn ()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddLight()
    inst.entity:AddNetwork()

    inst.AnimState:SetBank( "noelle_shield" )
    inst.AnimState:SetBuild( "noelle_shield" )
    inst.AnimState:PlayAnimation( "open" )
    inst.AnimState:PushAnimation( "idle_loop", true )

    inst.SoundEmitter:PlaySound( "dontstarve/wilson/forcefield_LP", "loop" )

    inst.Light:SetRadius( 0 )
    inst.Light:SetIntensity( 0.9 )
    inst.Light:SetFalloff( 0.9 )
    inst.Light:SetColour( 1, 1, 1 )
    inst.Light:Enable( true )
    inst.Light:EnableClientModulation( true )

    inst._lightframe = net_tinybyte( inst.GUID, "noelle_shield._lightframe", "lightdirty" )
    inst._islighton = net_bool( inst.GUID, "noelle_shield._islighton", "lightdirty" )
    inst._lighttask = nil
    inst._islighton:set( true )

    inst.entity:SetPristine()

    OnLightDirty( inst )

    if not TheWorld.ismastersim then
        inst:ListenForEvent( "lightdirty", OnLightDirty )

        return inst
    end

    inst.kill_fx = kill_fx

    return inst
end

return Prefab( "noelle_shield", fn, assets )
