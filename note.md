@data read via spi 

```python
from pynq import Overlay
import time

# Load the SPI overlay
overlay = Overlay("spi.bit")
spi = overlay.axi_quad_spi_0

# Configure the SPI interface
spi.configure(cpol=0, cpha=0, speed_hz=1000000)  # 1 MHz, Mode 0

def read_adc_channel0():
    """Read 12-bit data from Channel 0 of the Pmod AD1 (AD7476A)."""
    spi.select()  # Select the Pmod AD1 by pulling CS low
    
    # Send a dummy byte to initiate conversion and read 2 bytes back (16 bits)
    raw_data = spi.read(2)  
    
    spi.deselect()  # Deselect the Pmod AD1 by pulling CS high
    
    # Combine the 2 bytes into a single 12-bit value (shift to get 12 bits)
    adc_value = (raw_data[0] << 8 | raw_data[1]) >> 4
    
    return adc_value

# Read 10 values from Channel 0 and store them in a list
channel0_data = []
for _ in range(10):
    data = read_adc_channel0()
    channel0_data.append(data)
    time.sleep(0.1)  # Small delay between readings

# Display the 10 readings
for idx, value in enumerate(channel0_data):
    print(f"Reading {idx + 1}: {value}")

```



---------------------------------------------------------------------------

AttributeError                            Traceback (most recent call last)
<ipython-input-4-a1ef42ef3dbb> in <module>()
      7 
      8 # Configure the SPI interface
----> 9 spi.configure(cpol=0, cpha=0, speed_hz=1000000)  # 1 MHz, Mode 0
     10 
     11 def read_adc_channel0():

AttributeError: 'DefaultIP' object has no attribute 'configure'





he error occurs because the `DefaultIP` object (`spi`) does not have a `configure` method. Since `DefaultIP` is a general driver for MMIO devices, we need to manually configure the SPI registers instead of relying on a high-level configuration method.

To communicate with the Pmod AD1 through SPI, you'll need to directly access and configure the SPI controller registers. For the **AXI Quad SPI** core, the configuration typically involves setting control and status registers manually.

### Steps to Manually Configure SPI:

1. **Control Register (SPICR)**: This register configures the SPI core. You need to set the clock polarity (CPOL), clock phase (CPHA), and enable the SPI core.

2. **Slave Select Register (SPISSR)**: This register selects the slave (Pmod AD1). You'll set this to enable the correct SPI slave.

3. **Transmit and Receive**: The SPI controller has FIFO buffers for transmitting and receiving data. You’ll need to write to these to initiate the SPI transfers.

with changes

```python
from pynq import Overlay
import time

# Load the SPI overlay
overlay = Overlay("spi.bit")
spi = overlay.axi_quad_spi_0

# SPI Registers (addresses may differ depending on your hardware configuration)
SPICR = 0x60  # SPI Control Register
SPISR = 0x64  # SPI Status Register
SPIDTR = 0x68  # SPI Data Transmit Register
SPIDRR = 0x6C  # SPI Data Receive Register
SPISSR = 0x70  # SPI Slave Select Register

# SPI Control Flags
SPICR_RESET = 0x00000000
SPICR_ENABLE = 0x00000086  # Master mode, Enable SPI, Mode 0 (CPOL = 0, CPHA = 0)

# SPI Status Flags
SPISR_TX_EMPTY = 0x00000004  # TX FIFO empty
SPISR_RX_VALID = 0x00000001  # RX data valid

# Function to write a value to a register
def write_reg(offset, value):
    spi.mmio.write(offset, value)

# Function to read a value from a register
def read_reg(offset):
    return spi.mmio.read(offset)

# Configure SPI control register
write_reg(SPICR, SPICR_ENABLE)

def read_adc_channel0():
    """Read 12-bit data from Channel 0 of the Pmod AD1."""
    write_reg(SPISSR, 0xFFFFFFFE)  # Select Pmod AD1 (Slave 0)

    # Write a dummy byte to trigger SPI transaction
    write_reg(SPIDTR, 0x00)
    
    # Wait for RX data to be valid
    while not (read_reg(SPISR) & SPISR_RX_VALID):
        pass
    
    # Read the 2 bytes (16 bits) of data received
    high_byte = read_reg(SPIDRR) & 0xFF
    low_byte = read_reg(SPIDRR) & 0xFF
    
    # Deselect the Pmod AD1
    write_reg(SPISSR, 0xFFFFFFFF)
    
    # Combine the 2 bytes into a 12-bit value
    adc_value = (high_byte << 8 | low_byte) >> 4
    return adc_value

# Read 10 values from Channel 0 and store them in a list
channel0_data = []
for _ in range(10):
    data = read_adc_channel0()
    channel0_data.append(data)
    time.sleep(0.1)  # Small delay between readings

# Display the 10 readings
for idx, value in enumerate(channel0_data):
    print(f"Reading {idx + 1}: {value}")

```
