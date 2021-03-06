mudlet-eotl
===========

My Mudlet scripts for EotL

## Setup

### Get the files

1. You'll need git installed on your mac. Here are some [instructions](https://help.github.com/articles/set-up-git).
2. Go to command line on your mac via the terminal.  Type: `cd ~/.config/mudlet/profiles/EotL/` _Replacing "EotL" with whatever profile you created for EotL in your mudlet client._
3. Clone this repository: `git clone git@github.com:borkweb/mudlet-eotl.git`

### Set up the Mudlet script

1. Open Mudlet and click the "Scripts" icon
2. Add a new script and give it a name.  I use "mudlet-eotl"
3. In the code section of that script, place the following:

```lua
-- *** Commands and helpers *** --
-- chatbox_size_width = 400
-- chatbox_size_height = 250

-- provide quick directions
dofile(getMudletHomeDir() .. "/mudlet-eotl/go.lua")

-- enables some follow commands so you don't have to react to your friend's needs when following him/her
dofile(getMudletHomeDir() .. "/mudlet-eotl/following.lua")

-- *** UI Stuff *** --

-- required for all UI stuff in this script collection
dofile(getMudletHomeDir() .. "/mudlet-eotl/bootstrap.lua")

-- adds a chatbox to the bottom left
dofile(getMudletHomeDir() .. "/mudlet-eotl/ui.chatbox.lua")

-- adds a statusbar to the bottom left
dofile(getMudletHomeDir() .. "/mudlet-eotl/ui.statusbar.lua")

-- adds hp/mana/ftg/xp bars
dofile(getMudletHomeDir() .. "/mudlet-eotl/ui.bars.lua")

-- adds a room labeler (that is sometimes catches more than rooms)
dofile(getMudletHomeDir() .. "/mudlet-eotl/ui.roomlabel.lua")
```

### Setting up the Triggers and Aliases

1. Open the Triggers window and click Import
2. Browse to the `mudlet-eotl` directory and select the `eotl.xml` file
3. You should be good to go

## Disabling features

If you don't want certain UI components, you can remove them by commenting out the line for the element you do not wish to have.  E.g. if you don't want the bars (health/mana/etc) you would do:

```lua
-- dofile(getMudletHomeDir() .. "/scripts/ui.bars.lua")
```
