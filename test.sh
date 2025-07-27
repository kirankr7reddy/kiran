#!/bin/bash
if dpkg -s apache2 &> /dev/null; then
   echo "Apache2 is already installed. ✅ Success"
else
   echo "Apache2 is not found. Installing....."
   sudo apt update && sudo apt install -y apache2
   if [ $? -eq 0]; then
   echo "Apache2 installed sucessfully. ✅ Success"
else
   echo "Apache2 installation failed. ❌"
    fi
fi


