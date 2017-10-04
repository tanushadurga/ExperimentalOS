decl
	integer status,index,lseek,i,j;
	string name,word,num,sw;
enddecl
integer main()
{
	
	status=Create("a");
	status=Open("a");
	read(i);
	while(j<=1500)do
			j=i+j;
			status=Write(status,j);
			j=j-i;
			j=j+1;

	endwhile;
	breakpoint;
	read(i);
	status=Seek(status,i);
	
		
	return 0;
}
