require "util"

local smallBiter = table.deepcopy(data.raw.unit["small-biter"])

newNibbler = {
  type="unit",
  movement_speed = 0.4,
  name = "nibbler",
  max_health = 7,
  attack_parameters =
    {
      type = "projectile",
      range = 0.5,
      cooldown = 17,
      ammo_type = make_unit_melee_ammo_type(4),
    },
  }

local nibbler = util.merge({smallBiter, newNibbler})

data:extend{nibbler}