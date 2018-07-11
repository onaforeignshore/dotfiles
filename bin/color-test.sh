#!/usr/bin/env bash
echo ""
echo -e " \033[38;5;231m System colors:\033[m"

for r in {0..2}; do
	for i in {0..15}; do
		if [[ "$r" == "1" ]]; then
			if [[ $i -gt 1 && $i -ne 4 ]]; then printf "\033[38;5;16m"; fi
			printf "\033[48;5;${i}m    %03d    \033[m " $i
		else
			echo -en "\033[48;5;${i}m           \033[m "
		fi
	done
	echo ""
done

echo ""
echo -e " \033[38;5;231m 256 color extended mode\033[m (8-bit): Color cube, 6x6x6"

#for i in 16 22 28 34 40 46; do
for i in {0..5}; do
	let "i = i*6 + 16"
	for r in {0..2}; do
		echo -n " "
		for j in {0..5}; do
			let "j = j*36"
			for k in {0..5}; do
				let "val = i+j+k"
				if [[ "$r" == "1" ]]; then
					case $val in
						16|17|18|52|53|88 )
							echo -en "\033[38;5;231m"
						;;
						*)
							echo -en "\033[38;5;16m"
						;;
					esac
					printf "\033[48;5;${val}m %03d \033[m" $val
				else
					echo -en "\033[48;5;${val}m     \033[m"
				fi
			done
			echo -en "   "
		done
		echo -e ""
	done
done

echo ""
echo -e " \033[38;5;231m Grayscale ramp:\033[m"

for r in {0..2}; do
	if [[ "$r" == "1" ]]; then
		printf "\033[48;5;16m        016  \033[m"
	else
		printf "\033[48;5;16m             \033[m"
	fi
	for i in {232..255}; do
		if [[ "$r" == "1" ]]; then
			if [[ $i -gt 240 ]]; then printf "\033[38;5;16m"; fi
			printf "\033[48;5;${i}m  %03d  \033[m" $i
		else
			echo -en "\033[48;5;${i}m       \033[m"
		fi
	done
	if [[ "$r" == "1" ]]; then
		printf "\033[38;5;16m\033[48;5;231m  231   \033[m"
	else
		printf "\033[48;5;231m        \033[m"
	fi
	echo ""
done

echo ""
echo -e "  \033[38;5;196mR\033[38;5;40mG\033[38;5;21mB\033[38;5;231m 3-byte Truecolor mode:\033[m Color cube, 16x16x6"

for g in {0..15}; do
	let "valg = g * 16"
	for r in 0 95 135 175 215 255; do
		for b in {0..31}; do
			let "valb = b * 8"
			printf "\033[48;2;%d;%d;%dm \033[m" $r $valg $valb
		done
		echo -en " "
	done
	echo ""
done

echo ""
echo -e " \033[38;5;231m Grayscale ramp:\033[m"

for r in {0..1}; do
	printf "  "
	for g in {0..63}; do
		let "g = g * 4"
		printf "\033[48;2;%d;%d;%dm   \033[m" $g $g $g
	done
	echo ""
done
echo -e "\n"
