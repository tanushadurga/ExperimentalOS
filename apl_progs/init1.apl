integer main()
{
	integer status,one,two,three,zero,zerotwo,onethree,file,all,index;
	string word,a,b,c,d,ac,bd;
	
	zero=Open("0.dat");
	one=Open("1.dat");
	two=Open("2.dat");
	three=Open("3.dat");

	status=Create("02.dat");
	status=Create("13.dat");

	zerotwo=Open("02.dat");
	onethree=Open("13.dat");
	
	status=Read(zero,a);
	status=Read(one,b);
	status=Read(two,c);
	status=Read(three,d);

	while(a!="101"&&c!="101")do
		if(a=="")then
			a="101";
		endif;
		if(c=="")then
			c="101";
		endif;
		if(a<c)then
			status=Write(zerotwo,a);
			status=Read(zero,a);
		endif;
		if(a>c)then
			status=Write(zerotwo,c);
			status=Read(two,c);
		endif;
	endwhile;
	while(b!="101"&&d!="101")do
		if(b=="")then
			b="101";
		endif;
		if(d=="")then
			d="101";
		endif;
		if(b<d)then
			status=Write(onethree,b);
			status=Read(one,b);
		endif;
		if(b>d)then
			status=Write(onethree,d);
			status=Read(three,d);
		endif;
	endwhile;
	status=Close(zero);
	status=Close(one);
	status=Close(two);
	status=Close(three);
	status=Close(zerotwo);
	status=Close(onethree);
	
	status=Delete("0.dat");
	status=Delete("1.dat");
	status=Delete("2.dat");
	status=Delete("3.dat");
	status=Exec("init2.xsm");
	
return 0;
}
