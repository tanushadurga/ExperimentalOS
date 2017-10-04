integer main()
{
	integer childpid, retval;
	childpid = Fork();
	if(childpid == -2) then
		retval = Exec("ini.xsm");
	else
		while(childpid != -1) do
			print(childpid);
//			childpid=childpid+1;
		endwhile;
	endif;
return 0;
}
