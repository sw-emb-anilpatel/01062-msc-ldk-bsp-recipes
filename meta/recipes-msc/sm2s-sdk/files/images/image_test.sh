#!/bin/sh

#sleep 60


# Set environment variables
export DISPLAY=:0  # Replace :0 with your display number if needed
export XDG_RUNTIME_DIR=/run/user/$(id -u)



while [ 1 ]
do
	FILE=/tmp/display_param_export
	if [ -f "$FILE" ]
	then
        	echo "gpio alredy exported"
	else

	        echo 0 > /sys/class/pwm/pwmchip0/export
	        echo 1000000 > /sys/class/pwm/pwmchip0/pwm0/period
        	echo 500000 > /sys/class/pwm/pwmchip0/pwm0/duty_cycle
        	echo 1 > /sys/class/pwm/pwmchip0/pwm0/enable

	        touch /tmp/display_param_export

	fi
	sleep 5
done
