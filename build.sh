echo "Building the sample project..."
# Install dependencies
#!/bin/bash

# Run the Python script to check if it works
python3 sample.py

# Check for PEP 8 compliance
echo "Checking for PEP 8 compliance..."
pycodestyle sample.py --max-line-length=100


#end