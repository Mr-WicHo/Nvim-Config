# Nvim-Config
Personal configuration of Nvim - - Its Public in case i lost acces to this account  =)

## Install Nvim
+ install [nvim](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-source).
  - requirements (For Ubuntu)
    ```
    sudo apt-get install ninja-build gettext cmake unzip curl build-essential
    ```
  - Nvim:
    ```
      git clone https://github.com/neovim/neovim
      cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
      sudo make install
    ```

## Install Requisites
[ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation) `sudo apt-get install ripgrep` <br>
[Git](https://git-scm.com/download/win) `sudo apt install git` <br>
[Nerd Fonts](https://www.nerdfonts.com/font-downloads)<br>

## SetUp LSP
1. Needed for LSP: <br>
   - Istall golang-go -- `sudo apt install golang-go` <br>

2. Needed for the LSP server to work
   - c++  == Clangd  --- from mason.nvim
  

## other
at the moment this is all that i remember that you need for this to work, if i remember more ill be adding it. <br>

* Need to change directory name on config --> options.lua --> line 31 (at this point)  where it says opt.undofile change directory to nvim folder.

[How to format README.md](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

## WSL
#### Install WSL
How to install [WSL](https://learn.microsoft.com/en-us/windows/wsl/install-manual)
`wsl --install` - In power shell run as admin <br>

## configure terminal (linux)
+ install and change to `zsh` - `sudo apt install zsh` <br>
+ change to zsh shell - `echo $0` --> `chsh` --> `/bin/zsh` --> `echo $0` <br>
  - reboot 
  - chose option (2)
+ install 'oh my zsh' - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
  - needs curl - `sudo apt install curl`
  - git
+ install theme -powerlevel10k `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
  - needs NERD font


#### Remove WSL
`wslconfig /l` - to see the distro that you have <br>
`wslconfig /u DistroName`  - to uninstall distro - where DistroName is the distro that you what to unistall <br>
