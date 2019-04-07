local assets =
{
    Asset("ANIM", "anim/razor.zip"),
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("razor")
    inst.AnimState:SetBuild("razor")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")
    inst:AddComponent("inventoryitem")
    inst:AddComponent("shaver")	--添加组件【剃刀】

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("razor", fn, assets)