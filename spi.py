# Import necessary modules
from pynq import Overlay
from pynq.lib.pmod import Pmod_SPI

# Load the bitstream (Make sure the bitstream contains the required SPI IP)
overlay = Overlay("your_bitstream.bit")

# Define the Pmod SPI (Replace with the actual Pmod connector used)
spi = Pmod_SPI(overlay.PMODA)

# SPI parameters for Pmod AD1 (ADC)
spi.max_speed_hz = 1000000  # Max frequency supported by Pmod AD1 is 1 MHz
spi.mode = 0b00  # SPI Mode 0 (CPOL = 0, CPHA = 0)

def read_adc_data(spi, channel):
    """Function to read data from a specific ADC channel (0 or 1)"""
    # Construct the control byte (single-ended mode)
    ctrl_byte = 0b11010000 if channel == 0 else 0b11110000

    # Send control byte and read 2 bytes of data from the ADC
    resp = spi.transfer([ctrl_byte, 0x00, 0x00])
    
    # Combine the response bytes into a 12-bit value
    adc_value = ((resp[1] & 0x0F) << 8) | resp[2]
    
    return adc_value

# Example of reading from both channels of Pmod AD1
channel_0_data = read_adc_data(spi, 0)
channel_1_data = read_adc_data(spi, 1)

print(f"Channel 0 Data: {channel_0_data}")
print(f"Channel 1 Data: {channel_1_data}")

# Don't forget to release the SPI after use
spi.close()
