# toolchain-mana
本项目主要目的是用于管理系统中不同版本的编译器，尤其在需要多种编译器时个人觉得操作起来比较好用。
使用方法：
配置：toolchain-mana.sh config type,example:toolchain-mana.sh config arm-linux-gnueabihf-
安装：toolchain-mana.sh install type path priority,example:toolchain-mana.sh install arm-linux-gnueabihf- /usr/local/arm/gcc-4.9.4-arm-linux-gnueabihf/bin 60
删除：toolchain-mana.sh remove type path,example:toolchain-mana.sh remove arm-linux-gnueabihf- /usr/local/arm/gcc-4.9.4-arm-linux-gnueabihf/bin
