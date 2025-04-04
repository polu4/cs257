from pynput.mouse import Listener
from pynput.keyboard import Listener as KeyboardListener
import time
import matplotlib.pyplot as plt
import numpy as np

times = []  
should_exit = False  

def on_click(x, y, button, pressed):
    timestamp = time.perf_counter()

    if pressed:
        print(f"Button {button} pressed at ({x}, {y}) at time {timestamp}")
        times.append(timestamp)

def on_press(key):
    global should_exit
    try:
        if key.char == 'q':
            print("Stopping listener...")
            should_exit = True
            return False  
    except AttributeError:
        pass  


def analyze_and_plot(times):
    if len(times) < 2:
        print("Not enough clicks to perform linear fit.")
        return
    
    times = np.subtract(times,times[0])

    click_numbers = np.arange(1, len(times) + 1)

    slope, intercept = np.polyfit(click_numbers, times, 1)
    
    fitted_times = slope * click_numbers + intercept
    
    # Calculate residuals
    residuals = times - fitted_times

    time_differences = np.diff(times)  
    avg_time_between_clicks = np.mean(time_differences)  
    bpm = 60 / avg_time_between_clicks if avg_time_between_clicks > 0 else 0  
    plt.figure(figsize=(12, 6))
    
    # Plot the clicks vs. time with the best linear fit
    plt.subplot(1, 2, 1)
    plt.plot(click_numbers, times, 'o', label='Mouse Clicks')
    plt.plot(click_numbers, fitted_times, 'r-', label=f'Linear Fit: y = {slope:.6f}x + {intercept:.6f}')
    plt.xlabel('Click Number')
    plt.ylabel('Time (Seconds)')
    plt.title('Mouse Clicks Over Time with Linear Fit')
    plt.legend()
    plt.grid(True)

    # Plot the residuals in BPM
    red = (60 / np.diff(times)) - bpm

    plt.subplot(1, 2, 2)
    plt.plot(click_numbers[:-1], red, 'bo', label='Residuals in BPM')
    plt.axhline(0, color='red', linestyle='--', label='Zero Line')
    plt.xlabel('Click Number')
    plt.ylabel('Residual (BPM)')
    plt.title('Residuals of Linear Fit')
    plt.legend()
    plt.grid(True)
    
    plt.tight_layout()
    plt.show()
    print(f"Linear Fit: y = {slope:.6f}x + {intercept:.6f}")
    print(f"Average BPM: {bpm:.2f}")


mouse_listener = Listener(on_click=on_click)
keyboard_listener = KeyboardListener(on_press=on_press)

mouse_listener.start()
keyboard_listener.start()

while not should_exit:
    if should_exit:
        mouse_listener.stop()
        keyboard_listener.stop()

mouse_listener.join()
keyboard_listener.join()

analyze_and_plot(times)

