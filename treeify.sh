cp -n -r markdown/media html

currentDirectory=$(basename "$PWD");
echo '<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="" xml:lang="">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
  <title>'$currentDirectory'</title>
  <style>
    html {
      line-height: 1.5;
      font-family: Georgia, serif;
      font-size: 20px;
      color: #1a1a1a;
      background-color: #fdfdfd;
    }
    body {
      margin: 0 auto;
      max-width: 36em;
      padding-left: 50px;
      padding-right: 50px;
      padding-top: 50px;
      padding-bottom: 50px;
      hyphens: auto;
      overflow-wrap: break-word;
      text-rendering: optimizeLegibility;
      font-kerning: normal;
    }
    h1 {
      text-align: center;
    }
    a {
      margin-top: 2rem;
      font-size: 1.3rem;
      color: #1a1a1a;
    }
  </style>
</head>
<body>
<h1>'$currentDirectory'</h1>
<p>' > html/"$currentDirectory".html

for i in markdown/*.md;
do 
FORMATLESS_NAME=${i:9:-3};
line=$(head -n 1 $i);
title=${line:2};
pandoc --from=markdown --to=html --standalone --metadata pagetitle="$title" --output="html/$FORMATLESS_NAME".html "$i"; 
echo "<a href='$FORMATLESS_NAME.html'>$title</a><br>" >> html/"$currentDirectory".html;
done;

echo '</p>
</body>
</html>' >> html/"$currentDirectory".html

exit
