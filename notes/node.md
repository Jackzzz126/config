# node.js 安装

1. wget https://nodejs.org/dist/v10.15.3/node-v10.15.3-linux-x64.tar.xz
2. tar -xvf node-v10.15.3-linux-x64.tar.xz
3. sudo cp -r node-v10.15.3-linux-x64 /usr/local
4. sudo ln -s /usr/local/node-v10.15.3-linux-x64/bin/node /usr/local/bin/node 
5. sudo ln -s /usr/local/node-v10.15.3-linux-x64/bin/npm /usr/local/bin/npm 
6. add "prefix=/usr/local/" to .npmrc or run `npm config set prefix "/usr/local/"`

# node dev env
sudo npm install -g jshint mocha bunyan forever

# nvm模式
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
>test if success, need relogin
command -v nvm
nvm install 8.11.1
npm install -g pm2@4.1.2

