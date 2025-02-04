import machine
import utime

button = machine.Pin(14, machine.Pin.IN, machine.Pin.PULL_DOWN)
i = 0
led_onboard = machine.Pin(25, machine.Pin.OUT)

def wait_pin_change(pin):
    # wait for pin to change value
    # it needs to be stable for a continuous 20ms
    cur_value = pin.value()
    active = 0
    while active < 50:
        if pin.value() != cur_value:
            active += 1
        else:
            active = 0
        utime.sleep_ms(1)
    return not cur_value

while True:
    #value = wait_pin_change(button)
    #print("You pressed the button!", i, value)
    utime.sleep_ms(100)
    #led_onboard.value(value)
    #if value:
    #    led_onboard.toggle()
    #i = i + 1
    value = button.value()
    print(value)
    led_onboard.value(value)