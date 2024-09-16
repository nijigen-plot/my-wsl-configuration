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
2. 各PCへはシンボリックリンクを設定して配置
	a. `ls -s /mnt/c/Users/UserName/.wslconfig ~/.wslconfig`
