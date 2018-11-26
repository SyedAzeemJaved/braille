from time import sleep
import RPi.GPIO as GPIO

DIR1 = 20   # Direction GPIO Pin
STEP1 = 17  # Step GPIO Pin

DIR2 = 21   # Direction GPIO Pin
STEP2 = 18  # Step GPIO Pin



GPIO.setmode(GPIO.BCM)
GPIO.setup(DIR1, GPIO.OUT)
GPIO.setup(STEP1, GPIO.OUT)
GPIO.setup(DIR2, GPIO.OUT)
GPIO.setup(STEP2, GPIO.OUT)

delay = .0208

steps = 120 # steps b/w characters 


for x in steps:
	GPIO.output(DIR, HIGH)
	GPIO.output(STEP, GPIO.HIGH)
	sleep(delay)
	GPIO.output(STEP, GPIO.LOW)
	sleep(delay)


        
