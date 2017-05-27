# CHIPtainer Example: Python with CHIP_IO library

This is a Docker file for building a container that includes Python as well as the CHIP_IO library for interfacing with GPIO, PWM, and ADC.

You must run this container from a CHIP that has Docker installed. The test instructions assume you are using a CHIP Pro Dev Board.

Download the latest image:

```
docker pull modelb/chiptainer_python_io:master
```

Now run the Docker container, allowing access to the GPIO directories, device memory, and the raw IO.

```
docker run -v /sys:/sys --cap-add SYS_RAWIO --device /dev/mem -it modelb/chiptainer_python_io:master
```

To test, you can try using the D3 LED on the CHIP Pro Dev Board. First, launch Python:

```
python
```

Then issue the commands to turn the LED on and off:

```
import CHIP_IO.GPIO as GPIO
GPIO.setup("CSID3", GPIO.OUT)
GPIO.output("CSID3", GPIO.HIGH) # LED D3 should light up
GPIO.output("CSID3", GPIO.LOW) # LED D3 should go out
exit()
```

```
exit  # exits the container
```
