# How to set up Windows Terminal w/ Oh My Posh etc.
Video version: https://www.youtube.com/watch?v=TY_YKz1uvws
## Prerequisites
### Install `Windows Terminal`
- Go to the Microsoft Store
- Search for "Windows Terminal"
- Install 
### Install `PowerShell`
- Go to the Microsoft Store
- Search for "PowerShell"
- Install
- Alternatively you can install it from [here](https://github.com/PowerShell/PowerShell/releases)
## Configuration
- Open up `Windows Terminal`
- Go to Settings
### Set PowerShell as the default profile
- Go to Startup
- Set default profile to `PowerShell`
### Set Windows Terminal as the default terminal
- Go to Startup
- Set default terminal application to `Windows Terminal`
### Modify "new instance behavior"
- Go to Startup
- Set it to "attach to the most recently used window"
### Hide other terminals
- Click `Open JSON file`
- Go to "profiles"
- Set "hidden" to `true` for every terminal except `PowerShell`
## Installing `Oh My Posh`
- Go to the Microsoft Store
- Search for "Oh My Posh"
- Install
- Alternatively you can install it from [here](https://ohmyposh.dev/docs/installation/windows)
## Installing a compatible font
- Go to the [Nerd Fonts website](https://www.nerdfonts.com/font-downloads)
- Download the [Hack Nerd font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip)
- Unzip the folder
- Open up the "Font settings" in Windows (search for fonts)
- Drag and drop all the `.ttf` files from the unzipped hack folder into the "Add fonts" square:
  
  ![image](https://github.com/OscarBennich/windows-terminal-setup-how-to/assets/26872957/e3ebfe1f-550e-43e4-8cba-5ef587be4677)
- Open up `Windows Terminal`
- Go to Settings
- Go to Profiles > PowerShell
- Go to Additional Settings > Appearance
- Go to Font face
- Choose `Hack Nerd Font`
- Save
