integer main()
{
	integer status;
	status=Fork();
	if(status==-2)then
		status=Exec("odd.xsm");
	endif;
	print("boo");
	status=Exec("even.xsm");
return 0;
}
