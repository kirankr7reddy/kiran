#!/bin/bash

# Function to check and install a package
install_package() {
    local package_name=$1

    if dpkg -s "$package_name" &> /dev/null; then
        echo "$package_name is already installed. ✅ Success"
    else
        echo "$package_name not found. Installing..."
        sudo apt update && sudo apt install -y "$package_name"
        if [ $? -eq 0 ]; then
            echo "$package_name installed successfully. ✅ Success"
        else
            echo "$package_name installation failed. ❌"
        fi
    fi
}

# Ask user for package name
read -p "Enter the package name you want to install: " pkg
install_package "$pkg"

