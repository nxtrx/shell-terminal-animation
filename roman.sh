#!/bin/bash

# Path to the directory containing the images
image_dir="romidance/"

# Define an array of image numbers
image_numbers=( {1..14} )

# Infinite loop
while true; do
    # Loop through the image numbers
    for i in "${image_numbers[@]}"; do
        # Construct the filename
        filename="${image_dir}${i}.jpg"
        
        # Check if the file exists
        if [ -f "$filename" ]; then
            # Display the image with jp2a
            jp2a --colors --color-depth=24 --background=light --fill -z "$filename"
            
            # Sleep for a short duration to create an animation effect
            sleep 0.07  # Adjust the duration as needed

        fi
    done
done
