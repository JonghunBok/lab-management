for proc in `sudo lsof /dev/nvidia* | grep /dev | awk '{ print $2 }' | uniq`; do  
	sudo kill $i;   
	echo "killed $i"; 
done


sudo rmmod nvidia_drm
sudo rmmod nvidia_modeset
sudo rmmod nvidia_uvm
sudo rmmod nvidia



