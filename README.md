# 编译教程

	mkdir miui && cd miui

	repo init -u git://github.com/Micode/patchrom.git -b jellybean

	repo sync -j4

	git clone https://github.com/XMelancholy/patchrom_miui_v5_sony-kumquat st25i

	source build/envsetup.sh && cd st25i

	make zipfile && ./pzip

# 输出目录out
