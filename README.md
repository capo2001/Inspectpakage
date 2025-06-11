# 📦 InspectPackage Script for FiveM (ESX)

An immersive package inspection script for FiveM. Players can use a `package` item, triggering an animation and progress bar. After successful inspection, the package is removed, and random or predefined rewards are granted.

---

## 📦 Description

- 🎒 Use a `package` item to simulate opening a parcel or crate
- 🛠️ Reward the player with multiple items upon use
- ⏳ Progress bar & animation for immersive feedback
- 🧾 Inventory integration (e.g. `ox_inventory`)
- ❌ Package is consumed after use

---

## 🧰 Requirements

- [`es_extended`](https://github.com/esx-framework/es_extended)
- [`esx_inventory`](https://github.com/esx-framework/esx_inventory) or similar
- Progress bar (e.g. [`ox_lib`](https://overextended.github.io/ox_lib/docs/client/UI/Progress))

---

## 🚀 Features

- 🎁 Openable item (`inspectpackage`)
- 🎞️ Customizable animation and duration
- 🎲 Random or fixed reward items
- 🔧 Full configuration support
- 📉 0.00ms resmon while idle

---

## ⚙️ Configuration (`config.lua`)

```lua
Config = {}

-- Duration of the inspect action (ms)
Config.Duration = 5000

-- Animation settings
Config.Animation = {
    dict = 'anim@heists@box_carry@',
    name = 'idle',
    flag = 49
}

-- Notification function
Config.Notify = function(msg)
    lib.notify({ description = msg, type = 'inform' })
end

-- Rewards (you can randomize or define fixed ones)
Config.Rewards = {
    { name = 'water', count = 2 },
    { name = 'bread', count = 1 },
    { name = 'repairkit', count = 1 }
}
