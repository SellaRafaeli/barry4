# Barry

Easy, beautiful, dashboards.

## App types 
# Dashboards 
# Blog
# Personal Pages 
# CRM 
# CMS 

## Count number of files in folders 

for i in */ .*/ ; do 
    echo -n $i": " ; 
    (find "$i" -type f | wc -l) ; 
done