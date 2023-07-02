# How to set up Windows Terminal w/ Oh My Posh etc.
These instructions are based on this video: https://www.youtube.com/watch?v=TY_YKz1uvws
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
- Set it to "attach to the most recently used window
  
### Hide other terminals
- Click `Open JSON file`
- Go to "profiles"
- Set "hidden" to `true` for every terminal except `PowerShell`
  
## Install `Oh My Posh`
- Go to the Microsoft Store
- Search for "Oh My Posh"
- Install
- Alternatively you can install it from [here](https://ohmyposh.dev/docs/installation/windows)
  
## Install a compatible font
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
- Choose `Hack Nerd Font`, save

## Create a PowerShell profile file
PowerShell will look for a profile file to initialize each time you open the terminal in the path that gets printed if you run his command: `echo $profile`. This file does not exist by default, so we need to create it.

- To create this file, simply run this command in your terminal `New-Item -Path $PROFILE -Type File -Force`
- Run the command `code $PROFILE` to open up the newly created file in VS Code
- Add the command `oh-my-posh init pwsh | Invoke-Expression` to the file, save
- Refresh your profile by running the command `. $PROFILE` in the terminal
- Your terminal should now look like this:

![image](https://github.com/OscarBennich/windows-terminal-setup-how-to/assets/26872957/eb7ebc2a-9739-4181-8ea1-f4a915025f87)
- These settings will be automatically initalized whenever you start the terminal from now on

## Add an Oh My Posh theme
- Open up the PowerShell profile file by running command `code $PROFILE` in your terminal
- Replace the command you just added with this (adding the `--config` part):
  - `oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/jandedobbeleer.omp.json" | Invoke-Expression`
- If you save and refresh your terminal, you should see that the theme changed
- You can now go to the [theme page](https://ohmyposh.dev/docs/themes) on the Oh My Posh website and look for whatever theme you want to try
- When you've found one, take the name and replace the `"jandedobbeleer"` part of the expression above, save, and refresh the terminal
- For example, I like the ["amro"](https://ohmyposh.dev/docs/themes#amro) theme, so the full expression would be:
  - `oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/amro.omp.json" | Invoke-Expression`
- My terminal now looks like this:

![image](https://github.com/OscarBennich/windows-terminal-setup-how-to/assets/26872957/5a0e76a0-4f62-4ad1-8658-9c0ad684305c)
- It is also possible to [adjust themes](https://ohmyposh.dev/docs/installation/customize#adjust-a-theme) if you want to read more about that.
