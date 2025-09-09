# My Bash scripts

### Graphics

Scripts for converting graphic files are using **ImageMagick**.  
To install ImageMagick: `sudo apt install imagemagick` 
___
<br /> 

**resize_images.sh** - batch resize (downsize and compress for web - 1000 px, 72 DPI).  
Usage: `./resize_images.sh format absolute_input_path absolute_output_path`, format **is case sensitive**, example: `./resize_images.sh JPG /home/pi/Pictures/Album_1 /home/pi/Pictures/Album_1/small`  
<br />  

**images_to_pdf.sh** - combine all image files into single pdf.  
Usage: `./to_pdf.sh [input_format] [input_path] [output_file.pdf]`, format **is case sensitive**, example: `./to_pdf.sh jpg "./scanned documents" ./scans.pdf`  
<br />
___

<br />

### Documents
  
Scripts for converting documents are using **Pandoc** and **wkhtmltopdf**.  
To install: `sudo apt install pandoc wkhtmltopdf`  
___
<br />
  
**md2pdf.sh** - batch convert Markdown files to pdf (every .md file will be converted to a separate pdf file).  
Usage: `./md2pdf.sh absolute_input_path`  
<br />
___

<br />

### Programming
  
Scripts for tasks related to programming.  
___
<br />
  
**defined.sh** - AWK pulls first lines of c/c++ functions definitions.  
Usage: `./defined.sh source.c`

___

<br />

### Other
  
Other stuff.  
___
<br />
  
**clean_boot.sh** - Removes old Linux kernel files.  
Usage: `./clean_boot.sh`
