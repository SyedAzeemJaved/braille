from time import sleep
import RPi.GPIO as GPIO

DIR = 23   # Direction GPIO Pin
STEP = 24  # Step GPIO Pin


GPIO.setmode(GPIO.BCM)
GPIO.setup(DIR, GPIO.OUT)
GPIO.setup(STEP, GPIO.OUT)

delay = .0208

steps = 120 # steps b/w characters 


for x in range(0, steps):
	GPIO.output(DIR, GPIO.HIGH)
	GPIO.output(STEP, GPIO.HIGH)
	sleep(delay)
	GPIO.output(STEP, GPIO.LOW)
	sleep(delay)


        
