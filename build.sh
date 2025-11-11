echo "Building the sample project..."
# Install dependencies
#!/bin/bash
set -e

echo "Creating virtual environment..."
python3 -m venv venv
. venv/bin/activate

apt update
apt install -y python3-pip python3-pycodestyle

echo "Installing dependencies..."
pip install pycodestyle

# Run the Python script to check if it works
python3 sample.py

# Check for PEP 8 compliance
echo "Checking for PEP 8 compliance..."
pycodestyle sample.py --max-line-length=100

deactivate
#end