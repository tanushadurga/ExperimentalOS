integer main(){
	integer status,index,temp;
	string big;
	print("name:");
	read(big);
	temp=Create(big);
	status=Open(big);
	index=0;
	status=0;
	print("writing");
	print("block");
	while(status==0)do
		status=Write(status,index);
		if(index%512==0)then
			print(index/512);
		endif;
		index=index+1;
	endwhile;
	print("size:");
	print(index);	
	
	return 0;
}
