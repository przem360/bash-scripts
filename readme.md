# My Bash scripts

Scripts for converting graphic files are using **ImageMagick**.  
To install ImageMagick: `sudo apt install imagemagick` 
___
<br /> 

**resize_images.sh** - batch resize (downsize and compress for web - 1000 px, 72 DPI).  
Usage: `./resize_images.sh format absolute_input_path absolute_output_path`, format **is case sensitive**, example: `./resize_images.sh JPG /home/pi/Pictures/Album_1 /home/pi/Pictures/Album_1/small`  
<br />  

**images_to_pdf.sh** - combine all image files into single pdf.  
Usage: `./images_to_pdf.sh format absolute_input_path absolute_output_path`, format **is case sensitive**, example: `./images_to_pdf.sh JPG /home/pi/Pictures/Scans /home/pi/Pictures/Scans/scans.pdf`  