integer main()
{
	integer pid;
	print ("Before Fork");
	pid = Fork();
	print ("After Fork");
	return 0;
}
