#!/usr/bin/env sh

install_brew() {
  printf "brew: "

  if [ "$(uname)" != "Darwin" ]; then
    printf "MacOS not detected\n"
    return
  fi

  printf "Not implemented [TODO]\n"
}

install_oh_my_zsh() {
  printf "oh-my-zsh: "

  if [ -z "${ZSH}" ]; then
    printf "Installing... "
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null
    printf "[Done]\n"
  else
    printf "Already installed\n"
  fi
}

install_neovim() {
  printf "neovim: "

  if [ -n "$(command -v nvim)" ]; then
    printf "Already installed\n"
    return
  fi

  if [ "$(uname)" = "Linux" ]; then
    printf "Installing... "
    sh -c "sudo add-apt-repository ppa:neovim-ppa/unstable" > /dev/null
    sh -c "sudo apt install neovim -y" > /dev/null
    printf "[Done]\n"
  elif [ "$(uname)" = "Darwin" ]; then
    printf "Not implemented [TODO]\n"
  else
    printf "OS not supported\n"
  fi
}

install_vim_plug() {
  printf "vim-plug: "

  plug_path="${HOME}/.local/share/nvim/site/autoload/plug.vim"

  if [ ! -f "$plug_path" ]; then
    printf "Installing... "
    curl -fLo "$plug_path" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    printf "[Done]\n"
  else
    printf "Already installed\n"
  fi
}

install_brew
install_oh_my_zsh
install_neovim
install_vim_plug

