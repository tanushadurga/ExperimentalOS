integer main(){
	integer status;
	integer temp;
	status=Create("a");
	status=Open("a");
	integer i;
	i=20;
	while(i<=60)do
		if(i%2==0)then
			temp=Write(status,i);
		endif;
		i=i+1;
	endwhile;
	temp = Seek(status,0);
	integer status1;
	status1=Create("b");
	status1=Open("b");
	i=1;
	while(i<=40)do
		if(i%2==1)then
			temp=Write(status1,i);
		endif;
		i=i+1;
	endwhile;
	temp =Seek(status1,0);
	integer status2;
	status2=Create("c");
	status2=Open("c");
	string word;
	string word1;
	string x;
	string y;
	temp=Read(status,word);
	x=word;
	
	temp=Read(status1,word1);
	y=word1;
	
	
	while(x!="")do
		if(y=="")then
			break;
			
		endif;
		
		if(x<y)then
			temp=Write(status2,x);
			temp=Read(status,x);
		else
			temp=Write(status2,y);
			temp=Read(status1,y);
		endif;
	endwhile;
	if(x=="" && y!="")then
		while(y!="")do
			temp=Write(status2,y);
			temp=Read(status1,y);
		endwhile;
				
	endif;
	if(y=="" && x!="")then
		while(x!="")do
			temp=Write(status2,x);
			temp=Read(status,x);
		endwhile;
	endif;
	temp=Close(status);
	temp=Close(status1);
	temp=Delete("a");
	temp=Delete("b");
	temp=Seek(status2,0);
	temp=Read(status2,x);
	while(x!="")do
		print(x);
		temp=Read(status2,x);
	endwhile;
	
return 0;	
}
