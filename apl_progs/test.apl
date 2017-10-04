integer main(){
	integer status,i,even,odd;
	string even1,odd1,ans;
	status=Create("even");
	status=Create("odd");
	status=Create("merge");
	status=Open("even");
	status=Open("odd");
	status=Open("merge");

	i=1;
	while(i<=40)do
		if(i%2==1)then
			status=Write(1,i);
		endif;
		i=i+1;
	endwhile;
	
	i=20;
	while(i<=60)do
		if(i%2==0)then
			status=Write(0,i);
		endif;
		i=i+1;
	endwhile;
	
	status=Seek(0,0);
	status=Seek(1,0);
	status=Read(0,even1);
	status=Read(1,odd1);
	while(even1!="101"&&odd1!="101")do
		if(even1=="")then
			even1="101";
		endif;
		if(odd1=="")then
			odd1="101";
		endif;
		if(even1<odd1)then
			status=Write(2,even1);
			status=Read(0,even1);
		endif;
		if(even1>odd1)then
			status=Write(2,odd1);
			status=Read(1,odd1);
		endif;
	endwhile;
	

	status=Close(0);
	status=Close(1);
	status=Delete("even");
	status=Delete("odd");
	status=Seek(2,0);
	status=Read(2,ans);

	while(ans!="")do
		print(ans);
		status=Read(2,ans);
	endwhile;

return 0;
}
