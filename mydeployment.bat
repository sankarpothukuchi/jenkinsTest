echo  off  
echo "Deploying code"

echo "removing the mapped drive..."
net use z: /delete

echo "Mapping the driver...."
net use z: \\localhost\inventory
echo "Copying the files from local to shared folder "
copy c:\server1\srvlog.txt z:\srvlog.txt
