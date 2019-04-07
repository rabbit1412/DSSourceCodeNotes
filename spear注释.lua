local assets=
{
Asset("ANIM", "anim/spear.zip"),--���س�ì ���ڵ���״̬�� ����
Asset("ANIM", "anim/swap_spear.zip"),--���س�ì �������ϵĶ���
}


local function onfinished(inst)
inst:Remove()--�;�������Ƴ���ì�������
end


local function onequip(inst, owner) 
owner.AnimState:OverrideSymbol("swap_object", "swap_spear", "swap_spear")--װ����ì�󣬳����ߵ�״̬ ���ϳ�ì��״̬����һ�������Ƕ�Ӧ�����������ֲ����Ķ��������ڶ��������Ƕ�����build���ƣ������������Ƕ�����bank���� (���¸������"swap_object"�����������Ϊ��ì����)
owner.AnimState:Show("ARM_carry") --װ����ì�󣬳����� ����֮�� ��ʾ����
owner.AnimState:Hide("ARM_normal") --װ����ì�󣬳����� ����֮�� ���� ���ڶ���������� �� ������ �� ��һ��ģ����ݲ�ͬ����� ��ѡ�� ˭���� ˭��ʾ��
end


local function onunequip(inst, owner) 
owner.AnimState:Hide("ARM_carry") --ж�³�ì�󣬳����� ����֮�� ����
owner.AnimState:Show("ARM_normal") ----ж�³�ì�󣬳����� ����֮�� ��ʾ��ԭ��ͬ�ϣ�
end




local function fn(Sim)
local inst = CreateEntity()--����inst�����������ʼ��������������壬������Ϊinst
local trans = inst.entity:AddTransform()--Ϊinst���ʵ�� ���� Transform ��׼�����Transform������� ʵ��Ĵ�С��λ�ã���״�ȵȡ�
local anim = inst.entity:AddAnimState()--Ϊinst���ʵ�� ���� AnimState ��׼���, AnimState���� ʵ�� �� ����Ч������ɫ�˾��ȵȡ�
MakeInventoryPhysics(inst)--����������inst���ʵ�� �� ����ϵͳ�� �����׼�齨�ο� scripts/standardcomponents.lua�������ж��Ѹ���MakeɶɶɶPhysics�����Ķ���

anim:SetBank("spear")--����Ч�� �� bank���ƣ�bank���� ����ģ��� ���������Ƶ��� ������ ���ж�Ӧ���� �ķ�Χ�ͱ߽磨��ֻ����⵽��һ����
anim:SetBuild("spear")--����Ч�� �� build���ƣ�build���� ���� ��ģ�ͣ����糤ì�� �������طֲ�������ì��ɶ�� ��ע�⣬��仰��ǰһ�仰ָ���� ��ì���ڵ����״̬���������ϵ�״̬��ǰ�� װ����ì�� ��ע�ͣ�
anim:PlayAnimation("idle")--����Ч����ʼ�������糤ì����ʱ ��һ����ʲô������ ����"idle"�����ֹ״̬�����ڶ����Ļ�����data/anim�ļ������� ����zip�ļ�����Ҫ��ktoolsת����spriter���Բ鿴��scml�ļ�����scml�ļ��Ķ����б�����и��ֶ���״̬�����硰idle������֮һ

inst:AddTag("sharp")--��������ӡ�sharp����ǩTag������Tag��Ӧ�ã��Ƿ��������ļ���������в�ͬ�����ɸѡ �����á��ڴ�"sharp"���TagĿǰ �һ���֪����ʲô���� (���Tag�������������ʱ��������Ч������������С)


inst:AddComponent("weapon")--���� ���� �������ì��������
inst.components.weapon:SetDamage(TUNING.SPEAR_DAMAGE)--���������������������TUNING��ָ ��scripts/tuning.lua�ﶨ���� SPEAR_DAMAGE�����������ֵ��

-------

inst:AddComponent("finiteuses")--���� �����;� �������ì��Ϊ���� �����;õ���
inst.components.finiteuses:SetMaxUses(TUNING.SPEAR_USES)--���� ����;�
inst.components.finiteuses:SetUses(TUNING.SPEAR_USES)--���� ��ǰ�;ã�һ������£�ո�µĳ�ì�� ��ǰ�;�=��������;ã� ����Щ��� ����ʵ�����Թ�������ӣ���һ���������;�

inst.components.finiteuses:SetOnFinished( onfinished ) --���� ��ì�����ʱ�����ô�죬����ǰ�涨��� onfinished�����������Ƴ���ì�� �ܶ�����;������ ɾ���������� ��ñ�� ��� �Ͳ��ᣬ������Ϊ�����������Ĳ�ͬ����


inst:AddComponent("inspectable")--���� ������������� ��� ���/�鿴 ��ì����˵��Ӧ�� �� (�����Ʒ�ܱ����)

inst:AddComponent("inventoryitem") --���� ��Ʒ����Ʒ ����� ��ì��Ȼ���Է��� ��Ʒ���������� ��

inst:AddComponent("equippable")--���� ��װ�� �������ì ��Ȼ װ�������ս���
inst.components.equippable:SetOnEquip( onequip ) --װ�� ��ì�󣬵���onequip������ǰ���ж���
inst.components.equippable:SetOnUnequip( onunequip ) -- ж�³�ì�󣬵���onunequip����

return inst --�տ�ʼ local inst = CreateEntity() ��仰ֻ�Ǵ�����ì�������Ŀ�ʼ��ͨ������Ĵ��������ƣ� ֱ����� return inst ����ʽ˵�� ��ì������嶨������ˣ�����
end


return Prefab( "common/inventory/spear", fn, assets) -- return inst ֮�� ������ �Ѷ���õ� ��ì ��Ϊ ��Ϸ�������Ʒ������ô ��仰 return Prefab ���ǰѳ�ì������� ������ɣ�fn�Ƕ��峤ì����������assets�ǳ�ì�Ĳ���
