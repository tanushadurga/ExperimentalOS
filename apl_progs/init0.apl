integer main()
{
	integer status,one,two,three,zero,zerotwo,onethree,file,all,index;
	string word,a,b,c,d,ac,bd;
	status=Fork();
	if(status==-2)then
		status=Fork();
		if(status==-2)then
			status=Create("0.dat");
			file=Open("0.dat");
			index=1;
			while(index<100)do
				if(index%4==0)then
					status=Write(file,index);
				endif;
				index=index+1;
			endwhile;
			status=Close(file);
			Exit();
		else
			status=Create("1.dat");
			file=Open("1.dat");
			index=0;
			while(index<100)do
				if(index%4==1)then
					status=Write(file,index);
				endif;
				index=index+1;
			endwhile;
			status=Close(file);
			Exit();
		endif;
	else
		status=Fork();
		if(status==-2)then
			status=Create("2.dat");
			file=Open("2.dat");
			index=0;
			while(index<100)do
				if(index%4==2)then
					status=Write(file,index);
				endif;
				index=index+1;
			endwhile;
			status=Close(file);
			Exit();
		else
			status=Create("3.dat");
			file=Open("3.dat");
			index=0;
			while(index<100)do
				if(index%4==3)then
					status=Write(file,index);
				endif;
				index=index+1;
			endwhile;
			status=Close(file);
		endif;
	endif;	
	
	file=0;
	while(file<10)do
		file=file+1;
	endwhile;	
	
	status=Exec("init1.xsm");
	
return 0;
}
