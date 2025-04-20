# これはなに

- WSL2&Ubuntu 20.04 設定諸々
	- .wslconfig
		- `Windows Users/UserName/.wslconfig`
	- .vimrc
		- Ubuntu 20.04 Vimの設定 `~/.vimrc`
	- .bashrc
		- Ubuntu 20.04 Bashrc

## 管理方法
1. このRepoで基本管理する
2. 各PCへはシンボリックリンクを設定して配置(絶対パスじゃないと効かないよ)
	a. `ln -s ~/.bashrc /home/name/.bashrc`

## vimrcについて
- vimいれてね

`$ sudo apt-get install vim`


- vim-plugを使ってるので事前インストールしてね

```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
