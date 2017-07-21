--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------BASIC VARIABLES-------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local EnemyVariantPack = RegisterMod("Enemy Variant Pack", 1)
local game = Game()
require("config")
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------MC_NPC_UPDATE--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function EnemyVariantPack:update(entity)
	local sprite = entity:GetSprite()
	local rng = entity:GetDropRNG()
	-----------------------------Ghost Clotty-----------------------------
	if entity.Type == 15 and entity.Variant == 0 and entity.SubType == 16 and sprite:IsEventTriggered("Shoot") then
		for i = 0, 270, 90 do
				Isaac.Spawn(EntityType.ENTITY_PROJECTILE, 6, 0, entity.Position, Vector.FromAngle(i) * 4, entity)
		end
	end
	-----------------------------Crying Host-----------------------------
	if entity.Type == 27 and entity.Variant == 0 and entity.SubType == 16 and sprite:IsEventTriggered("Shoot") then
		for i = 0, 315, 45 do
				Isaac.Spawn(EntityType.ENTITY_PROJECTILE, 0, 0, entity.Position, Vector.FromAngle(i) * 6, entity)
		end
	end
	-----------------------------Greed Baby-----------------------------
	if entity.Type == 36 and entity.Variant == 0 and entity.SubType == 16 and sprite:IsEventTriggered("Spawn") then
		Isaac.Spawn(16, 0, 17, entity.Position, Vector(0,0), entity)
	end
	-----------------------------Devil Nightcrawler-----------------------------
	if entity.Type == 255 and entity.Variant == 0 and entity.SubType == 16 then
		if sprite:IsEventTriggered("1") then
			Isaac.Spawn(1000, 22, 0, entity.Position, Vector(0,0), entity)
		end
		if sprite:IsEventTriggered("2") then
			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(0+math.random(0,10),30)), Vector(0,0), entity)
			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(30,0+math.random(0,10))), Vector(0,0), entity)
			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(0+math.random(0,10),-30)), Vector(0,0), entity)
			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(-30,0+math.random(0,10))), Vector(0,0), entity)
		end
		if sprite:IsEventTriggered("3") then
			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(0+math.random(0,10),60)), Vector(0,0), entity)
			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(60,0+math.random(0,10))), Vector(0,0), entity)
			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(0+math.random(0,10),-60)), Vector(0,0), entity)
			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(-60,0+math.random(0,10))), Vector(0,0), entity)
		end
--		if sprite:IsEventTriggered("4") then
--			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(0+math.random(0,10),90)), Vector(0,0), entity)
--			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(90,0+math.random(0,10))), Vector(0,0), entity)
--			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(0+math.random(0,10),-90)), Vector(0,0), entity)
--			Isaac.Spawn(1000, 22, 0, entity.Position:__add(Vector(-90,0+math.random(0,10))), Vector(0,0), entity)
--		end
	end
	-----------------------------Ghost Mega Clotty-----------------------------
	if entity.Type == 262 and entity.Variant == 0 and entity.SubType == 16 and sprite:IsEventTriggered("Shoot") then
		for i = 0, 270, 90 do
				Isaac.Spawn(EntityType.ENTITY_PROJECTILE, 6, 0, entity.Position, Vector.FromAngle(i) * 4, entity)
		end
	end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------SPAWN SYSTEM--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-----------------------------Ghost Clotty-----------------------------
	if GHOST_CLOTTY and entity.FrameCount <= 1 and rng:RandomFloat() < GHOST_CLOTTY_SPAWN_CHANCE and entity.SpawnerType ~= EntityType.ENTITY_FAMILIAR and entity.Type == EntityType.ENTITY_CLOTTY and entity.Variant == 0 and entity.SubType ~= 16 then
		entity:Morph(entity.Type, entity.Variant, 16, -1)
		entity.HitPoints = entity.MaxHitPoints
	end
	-----------------------------Creepy Boom Fly-----------------------------
	if CREEPY_BOOM_FLY and entity.FrameCount <= 1 and rng:RandomFloat() < CREEPY_BOOM_FLY_SPAWN_CHANCE and entity.SpawnerType ~= EntityType.ENTITY_FAMILIAR and entity.Type == EntityType.ENTITY_BOOMFLY and entity.Variant == 0 and entity.SubType ~= 16 then
		entity:Morph(entity.Type, entity.Variant, 16, -1)
		entity.HitPoints = entity.MaxHitPoints
	end
	-----------------------------Crying Host-----------------------------
	if CRYING_HOST and entity.FrameCount <= 1 and rng:RandomFloat() < CRYING_HOST_SPAWN_CHANCE and entity.SpawnerType ~= EntityType.ENTITY_FAMILIAR and entity.Type == EntityType.ENTITY_HOST and entity.Variant == 0 and entity.SubType ~= 16 then
		entity:Morph(entity.Type, entity.Variant, 16, -1)
		entity.HitPoints = entity.MaxHitPoints
	end
	-----------------------------Greed Baby-----------------------------
	if GREED_BABY and entity.FrameCount <= 1 and rng:RandomFloat() < GREED_BABY_SPAWN_CHANCE and entity.SpawnerType ~= EntityType.ENTITY_FAMILIAR and entity.Type == EntityType.ENTITY_BABY and entity.Variant == 0 and entity.SubType ~= 16 then
		entity:Morph(entity.Type, entity.Variant, 16, -1)
		entity.HitPoints = entity.MaxHitPoints
	end
	-----------------------------Lenny Fatty-----------------------------
	if LENNY_FATTY and entity.FrameCount <= 1 and rng:RandomFloat() < LENNY_FATTY_SPAWN_CHANCE and entity.SpawnerType ~= EntityType.ENTITY_FAMILIAR and entity.Type == EntityType.ENTITY_FATTY and entity.Variant == 0 and entity.SubType ~= 16 then
		entity:Morph(entity.Type, entity.Variant, 16, -1)
		entity.HitPoints = entity.MaxHitPoints
	end
	-----------------------------Pestilence Head-----------------------------
	if PESTILENCE_HEAD and entity.FrameCount <= 1 and rng:RandomFloat() < PESTILENCE_HEAD_SPAWN_CHANCE and entity.SpawnerType ~= EntityType.ENTITY_FAMILIAR and entity.Type == EntityType.ENTITY_DEATHS_HEAD and entity.Variant == 1 and entity.SubType ~= 16 then
		entity:Morph(entity.Type, entity.Variant, 16, -1)
		entity.HitPoints = entity.MaxHitPoints
	end
	-----------------------------Devil Nightcrawler-----------------------------
	if DEVIL_NIGHTCRAWLER and entity.FrameCount <= 1 and rng:RandomFloat() < DEVIL_NIGHTCRAWLER_SPAWN_CHANCE and entity.SpawnerType ~= EntityType.ENTITY_FAMILIAR and entity.Type == EntityType.ENTITY_NIGHT_CRAWLER and entity.Variant == 0 and entity.SubType ~= 16 then
		entity:Morph(entity.Type, entity.Variant, 16, -1)
		entity.HitPoints = entity.MaxHitPoints
	end
	-----------------------------Ghost Mega Clotty-----------------------------
	if GHOST_MEGA_CLOTTY and entity.FrameCount <= 1 and rng:RandomFloat() < GHOST_MEGA_CLOTTY_SPAWN_CHANCE and entity.SpawnerType ~= EntityType.ENTITY_FAMILIAR and entity.Type == EntityType.ENTITY_MEGA_CLOTTY and entity.Variant == 0 and entity.SubType ~= 16 then
		entity:Morph(entity.Type, entity.Variant, 16, -1)
		entity.HitPoints = entity.MaxHitPoints
	end
	-----------------------------Ball of Flies-----------------------------
	if BALL_OF_FLIES and entity.FrameCount <= 1 and rng:RandomFloat() < BALL_OF_FLIES_SPAWN_CHANCE and entity.SpawnerType ~= EntityType.ENTITY_FAMILIAR and entity.Type == EntityType.ENTITY_MOTER and entity.Variant == 0 and entity.SubType ~= 16 then
		entity:Morph(entity.Type, entity.Variant, 16, -1)
		entity.HitPoints = entity.MaxHitPoints
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------MC_ENTITY_TAKE_DMG-----------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function EnemyVariantPack:damage(entity,damage,_,_,_)
	local sprite = entity:GetSprite()
	local rng = entity:GetDropRNG()
	-----------------------------Ball of Flies-----------------------------
	if entity.Type == 16 and entity.Variant == 0 and entity.SubType == 16 and damage >= entity.HitPoints then
		Isaac.Spawn(EntityType.ENTITY_MOTER, 0, 0, entity.Position:__add(Vector(0,-5)), Vector(0,0), entity)
		Isaac.Spawn(EntityType.ENTITY_MOTER, 0, 0, entity.Position:__add(Vector(0,5)), Vector(0,0), entity)
	end
	-----------------------------Creepy Boom Fly-----------------------------
	if entity.Type == 25 and entity.Variant == 0 and entity.SubType == 16 and damage >= entity.HitPoints then
		for i = 45, 315, 90 do
				Isaac.Spawn(EntityType.ENTITY_PROJECTILE, 0, 0, entity.Position, Vector.FromAngle(i) * 6, entity)
		end
		Isaac.Spawn(1000, 23, 0, entity.Position, Vector(0,0), entity)
		Isaac.Spawn(1000, 23, 0, entity.Position:__add(Vector(-17.5,-17.5)), Vector(0,0), entity)
		Isaac.Spawn(1000, 23, 0, entity.Position:__add(Vector(0,-20)), Vector(0,0), entity)
		Isaac.Spawn(1000, 23, 0, entity.Position:__add(Vector(17.5,-17.5)), Vector(0,0), entity)
		Isaac.Spawn(1000, 23, 0, entity.Position:__add(Vector(20,0)), Vector(0,0), entity)
		Isaac.Spawn(1000, 23, 0, entity.Position:__add(Vector(17.5,17.5)), Vector(0,0), entity)
		Isaac.Spawn(1000, 23, 0, entity.Position:__add(Vector(0,20)), Vector(0,0), entity)
		Isaac.Spawn(1000, 23, 0, entity.Position:__add(Vector(-17.5,17.5)), Vector(0,0), entity)
		Isaac.Spawn(1000, 23, 0, entity.Position:__add(Vector(-20,0)), Vector(0,0), entity)
	end
	-----------------------------Pestilence Head-----------------------------
	if entity.Type == 212 and entity.Variant == 1 and entity.SubType == 16 and damage >= entity.HitPoints then
		local fly1 = rng:RandomFloat()
		local fly2 = rng:RandomFloat()
		local fly3If = rng:RandomFloat()
		local fly3 = rng:RandomFloat()
		local fly4If = rng:RandomFloat()
		local fly4 = rng:RandomFloat()
		Isaac.Spawn(1000, 23, 0, entity.Position, Vector(0,0), entity)
		--Fly 1--
		if fly1 <= 0.30 then
			Isaac.Spawn(13, 0, 0, entity.Position:__add(Vector(-5,0)), Vector(0,0), entity)
		elseif fly1 <= 0.60 then
			Isaac.Spawn(16, 0, 0, entity.Position:__add(Vector(-5,0)), Vector(0,0), entity)
		elseif fly1 <= 0.95 then
			Isaac.Spawn(60, 0, 0, entity.Position:__add(Vector(-5,0)), Vector(0,0), entity)
		else
			Isaac.Spawn(16, 0, 16, entity.Position:__add(Vector(-5,0)), Vector(0,0), entity)
		end
		--Fly 2--
		if fly2 <= 0.30 then
			Isaac.Spawn(13, 0, 0, entity.Position:__add(Vector(5,0)), Vector(0,0), entity)
		elseif fly2 <= 0.60 then
			Isaac.Spawn(16, 0, 0, entity.Position:__add(Vector(5,0)), Vector(0,0), entity)
		elseif fly2 <= 0.95 then
			Isaac.Spawn(60, 0, 0, entity.Position:__add(Vector(5,0)), Vector(0,0), entity)
		else
			Isaac.Spawn(16, 0, 16, entity.Position:__add(Vector(5,0)), Vector(0,0), entity)
		end
		--Fly 3--
		if fly3If <= 0.50 then
			if fly3 <= 0.30 then
				Isaac.Spawn(13, 0, 0, entity.Position:__add(Vector(0,-5)), Vector(0,0), entity)
			elseif fly3 <= 0.60 then
				Isaac.Spawn(16, 0, 0, entity.Position:__add(Vector(0,-5)), Vector(0,0), entity)
			elseif fly3 <= 0.95 then
				Isaac.Spawn(60, 0, 0, entity.Position:__add(Vector(0,-5)), Vector(0,0), entity)
			else
				Isaac.Spawn(16, 0, 16, entity.Position:__add(Vector(0,-5)), Vector(0,0), entity)
			end
		end
		--Fly 4--
		if fly4If <= 0.50 then
			if fly4 <= 0.30 then
				Isaac.Spawn(13, 0, 0, entity.Position:__add(Vector(0,5)), Vector(0,0), entity)
			elseif fly4 <= 0.60 then
				Isaac.Spawn(16, 0, 0, entity.Position:__add(Vector(0,5)), Vector(0,0), entity)
			elseif fly4 <= 0.95 then
				Isaac.Spawn(60, 0, 0, entity.Position:__add(Vector(0,5)), Vector(0,0), entity)
			else
				Isaac.Spawn(16, 0, 16, entity.Position:__add(Vector(0,5)), Vector(0,0), entity)
			end
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------CALLBACKS----------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
EnemyVariantPack:AddCallback(ModCallbacks.MC_NPC_UPDATE, EnemyVariantPack.update)
EnemyVariantPack:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, EnemyVariantPack.damage)
