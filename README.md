# Treeify. md to HTML
Convert your Markdown files to HTML, and create a webpage that links to all of them.

+ Install pandoc `sudo apt install pandoc`
+ Place your files in the *markdown* folder
+ Run the *treeify.sh* script
+ Find all the converted files in the *html* folder, ready to be exported for the web!

Every converted file will keep the original name. 

The <title></title> will be the first line of the file, excluding the #. 

The title of the link page will have the name that you give to the Treeify_md-to-html folder.

If you want to add local media, add them to the *media* folder, and the references will be kept and copied in the *html* folder. 

You can rerun the script multiple times for corrections or additions, and it will manually overwrite the already existing file. 
