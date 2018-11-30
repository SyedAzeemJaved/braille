from time import sleep
import RPi.GPIO as GPIO

DIR = 23   # Direction GPIO Pin
STEP = 24  # Step GPIO Pin
CW = 1
SPR = 550


GPIO.setmode(GPIO.BCM)
GPIO.setup(DIR, GPIO.OUT)
GPIO.setup(STEP, GPIO.OUT)

GPIO.output(DIR, CW) # for Forward Direction

step_count = SPR
delay = .0005

for x in range(step_count):
	GPIO.output(STEP, GPIO.HIGH)
	sleep(delay)
	GPIO.output(STEP, GPIO.LOW)
	sleep(delay)

GPIO.cleanup()
