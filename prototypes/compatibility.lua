if mods["minimalist-rails"] then

  if data.raw["recipe"]["rail-minimal"] then
    data.raw["recipe"]["rail-minimal"].ingredients = {
      {type = "item", name = "silicon-carbide", amount = 1},
      {type = "item", name = "neodymium", amount = 1},
    }
  end

  if data.raw["item"]["rail-minimal"] then
    data.raw["item"]["rail-minimal"].default_import_location = "moshine"
  end

  if data.raw["item"]["rail-ramp-minimal"] then
    data.raw["item"]["rail-ramp-minimal"].default_import_location = "moshine"
  end

  data.raw["curved-rail-b"]["curved-rail-b-minimal"].max_health = 3000
  data.raw["curved-rail-a"]["curved-rail-a-minimal"].max_health = 3000
  data.raw["half-diagonal-rail"]["half-diagonal-rail-minimal"].max_health = 2000
  data.raw["straight-rail"]["straight-rail-minimal"].max_health = 1000

  data.raw["curved-rail-b"]["curved-rail-b-minimal"].fast_replaceable_group = "curved-rail-b"
  data.raw["curved-rail-a"]["curved-rail-a-minimal"].fast_replaceable_group = "curved-rail-a"
  data.raw["half-diagonal-rail"]["half-diagonal-rail-minimal"].fast_replaceable_group = "half-diagonal-rail"
  data.raw["straight-rail"]["straight-rail-minimal"].fast_replaceable_group = "straight-rail"

  data.raw["curved-rail-b"]["curved-rail-b-minimal"].minable.mining_time = 3
  data.raw["curved-rail-a"]["curved-rail-a-minimal"].minable.mining_time = 3
  data.raw["half-diagonal-rail"]["half-diagonal-rail-minimal"].minable.mining_time = 2
  data.raw["straight-rail"]["straight-rail-minimal"].minable.mining_time = 1

  data.raw["curved-rail-b"]["curved-rail-b"].fast_replaceable_group = "curved-rail-b"
  data.raw["curved-rail-a"]["curved-rail-a"].fast_replaceable_group = "curved-rail-a"
  data.raw["half-diagonal-rail"]["half-diagonal-rail"].fast_replaceable_group = "half-diagonal-rail"
  data.raw["straight-rail"]["straight-rail"].fast_replaceable_group = "straight-rail"

  data.raw["curved-rail-b"]["curved-rail-b"].next_upgrade = "curved-rail-b-minimal"
  data.raw["curved-rail-a"]["curved-rail-a"].next_upgrade = "curved-rail-a-minimal"
  data.raw["half-diagonal-rail"]["half-diagonal-rail"].next_upgrade = "half-diagonal-rail-minimal"
  data.raw["straight-rail"]["straight-rail"].next_upgrade = "straight-rail-minimal"


  if mods["elevated-rails"] then
    data.raw["elevated-curved-rail-b"]["elevated-curved-rail-b-minimal"].max_health = 3000
    data.raw["elevated-curved-rail-a"]["elevated-curved-rail-a-minimal"].max_health = 3000
    data.raw["elevated-half-diagonal-rail"]["elevated-half-diagonal-rail-minimal"].max_health = 2000
    data.raw["elevated-straight-rail"]["elevated-straight-rail-minimal"].max_health = 1000

    data.raw["elevated-curved-rail-b"]["elevated-curved-rail-b-minimal"].fast_replaceable_group = "elevated-curved-rail-b"
    data.raw["elevated-curved-rail-a"]["elevated-curved-rail-a-minimal"].fast_replaceable_group = "elevated-curved-rail-a"
    data.raw["elevated-half-diagonal-rail"]["elevated-half-diagonal-rail-minimal"].fast_replaceable_group = "elevated-half-diagonal-rail"
    data.raw["elevated-straight-rail"]["elevated-straight-rail-minimal"].fast_replaceable_group = "elevated-straight-rail"

    data.raw["elevated-curved-rail-b"]["elevated-curved-rail-b-minimal"].minable.mining_time = 3
    data.raw["elevated-curved-rail-a"]["elevated-curved-rail-a-minimal"].minable.mining_time = 3
    data.raw["elevated-half-diagonal-rail"]["elevated-half-diagonal-rail-minimal"].minable.mining_time = 2
    data.raw["elevated-straight-rail"]["elevated-straight-rail-minimal"].minable.mining_time = 1

    data.raw["elevated-curved-rail-b"]["elevated-curved-rail-b"].fast_replaceable_group = "elevated-curved-rail-b"
    data.raw["elevated-curved-rail-a"]["elevated-curved-rail-a"].fast_replaceable_group = "elevated-curved-rail-a"
    data.raw["elevated-half-diagonal-rail"]["elevated-half-diagonal-rail"].fast_replaceable_group = "elevated-half-diagonal-rail"
    data.raw["elevated-straight-rail"]["elevated-straight-rail"].fast_replaceable_group = "elevated-straight-rail"

    data.raw["elevated-curved-rail-b"]["elevated-curved-rail-b"].next_upgrade = "elevated-curved-rail-b-minimal"
    data.raw["elevated-curved-rail-a"]["elevated-curved-rail-a"].next_upgrade = "elevated-curved-rail-a-minimal"
    data.raw["elevated-half-diagonal-rail"]["elevated-half-diagonal-rail"].next_upgrade = "elevated-half-diagonal-rail-minimal"
    data.raw["elevated-straight-rail"]["elevated-straight-rail"].next_upgrade = "elevated-straight-rail-minimal"
  end

  if data.raw["technology"]["minimalist-rails"] then
    table.insert(data.raw["technology"]["minimalist-rails"].prerequisites, "moshine-tech-silicon-carbide")
    table.insert(data.raw["technology"]["minimalist-rails"].unit.ingredients, {"utility-science-pack", 1})
    table.insert(data.raw["technology"]["minimalist-rails"].unit.ingredients, {"space-science-pack", 1})
  end

  if data.raw["technology"]["minimalist-elevated-rails"] then
    table.insert(data.raw["technology"]["minimalist-elevated-rails"].unit.ingredients, {"utility-science-pack", 1})
    table.insert(data.raw["technology"]["minimalist-elevated-rails"].unit.ingredients, {"space-science-pack", 1})
  end
end

if mods["Glass"] then
  if data.raw["recipe"]["glass-plate"] then
    data.raw["recipe"]["glass-plate"].category = "crafting"
  end
end

if mods["snouz-big-solar-panel"] then
  table.insert(data.raw["recipe"]["big-solar-panel"].ingredients, {type = "item", name = "silicon-cell", amount = 10})
  data.raw["item"]["big-solar-panel"].weight = 200*kg
  table.insert(data.raw["technology"]["big-solar-energy"].prerequisites, "moshine-tech-ai-tier-2")
end

if mods["snouz-big-accumulator"] then
  table.insert(data.raw["recipe"]["big-accumulator"].ingredients, {type = "item", name = "magnet", amount = 10})
  data.raw["item"]["big-accumulator"].weight = 200*kg
  table.insert(data.raw["technology"]["electric-energy-big-accumulators"].prerequisites, "moshine-tech-ai-tier-6")
end

if mods["snouz_better_substation"] then
  data.raw["recipe"]["snouz_better_substation"].ingredients = {
    
      {type = "item", name = "substation", amount = 4},
      {type = "item", name = "silicon-cell", amount = 15},
      {type = "item", name = "magnet", amount = 4}
  }
  data.raw["recipe"]["snouz_better_substation"].default_import_location = "moshine"
  data.raw["technology"]["snouz_better_substation_tech"].prerequisites = {"electric-energy-distribution-2", "moshine-tech-ai-tier-4"}
end

data.raw.item["sand"].weight = 1*kg
data.raw.item["neodymium"].weight = 4*kg