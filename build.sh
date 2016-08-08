vagrant ssh << EOF
	cp ~/in/*.bash ~/controller/Keyboards
	cp ~/in/*.kll ~/controller/kll/layouts

	cd ~/controller/Keyboards/

	./MD1.1-dirty49374.bash

	! rm -rf ~/out/MD11_DIRTY49374.gcc

	cp -rf MD11_DIRTY49374.gcc ~/out

	rm MD1.1-dirty49374.bash
	rm MD1.1-Standard.bash

	rm -rf MD11_DIRTY49374.gcc
EOF

echo ""
echo "waiting 3 seconds to flash"
sleep 1
echo "waiting 2 seconds to flash"
sleep 1
echo "waiting 1 seconds to flash"
sleep 1

kii-dfu/dfu-util.exe -D out/MD11_DIRTY49374.gcc/kiibohd.dfu.bin
