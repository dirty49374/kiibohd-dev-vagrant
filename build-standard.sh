vagrant ssh << EOF
	cp ~/in/*.bash ~/controller/Keyboards
	cp ~/in/*.kll ~/controller/kll/layouts

	cd ~/controller/Keyboards/

	./MD1.1-Standard.bash

	! rm -rf ~/out/MD11_STANDARD.gcc

	cp -rf MD11_STANDARD.gcc ~/out

	rm MD1.1-dirty49374.bash
	rm MD1.1-Standard.bash

	rm -rf MD11_STANDARD.gcc
EOF

echo ""
echo "waiting 3 seconds to flash"
sleep 1
echo "waiting 2 seconds to flash"
sleep 1
echo "waiting 1 seconds to flash"
sleep 1

kii-dfu/dfu-util.exe -D out/MD11_STANDARD.gcc/kiibohd.dfu.bin
