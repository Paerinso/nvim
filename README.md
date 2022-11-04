# nvim
My nvim developer setup

{
sudo apt-get update
sudo apt-get install -y dotnet-sdk-6.0
dotnet tool update --tool-path . csharp-ls
sudo apt-get install -y unzip
sudo apt-get install -y git
sudo apt-get install -y cargo
sudo apt-get install -y npm
sudo apt-get install -y g++
sudo apt-get install -y nodejs
sudo apt-get install -y ripgrep
cargo install tree-sitter-cli
sudo npm i -g vscode-langservers-extracted
export PATH=$PATH:/bin/nvim/nvim-linux64/bin
sudo echo 'export PATH="$PATH:/bin/nvim/nvim-linux64/bin"' >> ~/.bash_profile
export PATH=$PATH:/home/zifish/.cargo/bin
sudo echo 'export PATH="$PATH:/home/zifish/.cargo/bin"' >> ~/.bash_profile
export PATH=$PATH:/root/.cargo/bin
sudo echo 'export PATH="$PATH:/root/.cargo/bin"' >> ~/.bash_profile
cd ~/.config
git clone https://github.com/Paerinso/nvim.git
sudo chmod +x ~/.config/nvim/setup_most_recent_nvim.sh
./setup_most_recent_nvim.sh
sudo apt-get remove -y rustc
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh -s -- -y
exec bash
}

Start vim then quit vim, start it again then:

:TSUpdate
:Mason
