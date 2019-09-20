 #!/bin/bash
# Authors : Jonathan Phouminh , Zach Chommala 
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
#echo "Input filenname:"  
#read filename 
#echo "Input regular expression" 
#read regex 
#^^^^ uncomment everything above 
# count the number of lines that has the 303  expression 
filename="regex_practice.txt" 
regex="303"

#counting emails by only considering strings containing @ symbol 
echo "NUMBER OF PHONE NUMBER MATCHES:" 
grep -c  $regex $filename  
echo "NUMBER OF EMAILS: " 
grep -c "@" $filename

# need to parse the items with that dont have any string characters  
echo "LIST OF 303 AREA CODES" 
grep "303-"  $filename 

# need to append all emails under the address @geocities.com 
echo "Appending list of all emails under @geocities.com to , email_results.txt" 
grep "@geocities.com" $filename >> email_results.txt
