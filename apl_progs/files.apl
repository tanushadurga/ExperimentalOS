decl
	integer status,index,lseek;
	string name,word,num,sw;
enddecl
integer main()
{
	print("-----------------");	
	print("-1.breakpoint");
	print("1.create");
	print("2.delete");
	print("3.open");
	print("4.close");
	print("5.read");
	print("6.seek");
	print("7.write");
	print("8.ls");
	print("9.help");
	print("0.stop");
	print("Type");

	while(1==1)do	
		print("-----------------");	

		read(num);
	
		if(num=="b"||num=="breakpoint")then
			breakpoint;
		endif;
	
		if(num=="stop")then
			break;
		endif;

		if(num=="create")then
			print("name:");
			read(name);
			status = Create(name);
			if(status==0)then
				print("created");
			endif;
			if(status==-1)then
				print("failed");
			endif;
		endif;

		if(num=="delete")then
			print("name:");
			read(name);
			status = Delete(name);
			if(status==0)then
				print("deleted");
			endif;
			if(status==-1)then
				print("failed");
			endif;
		endif;

		if(num=="open")then
			print("name:");
			read(name);
			status = Open(name);
			if(status==-1)then
				print("failed");
			else
				print(status);
			endif;
		endif;

		if(num=="close")then
			print("index:");
			read(index);
			status = Close(index);
			if(status==0)then
				print("closed");
			endif;
			if(status==-1)then
				print("failed");
			endif;
		endif;

		if(num=="read")then
			print("index:");
			word="-1";
			read(index);
			status = Read(index,word);
			print(word);
		endif;

		if(num=="seek")then
			print("index");
			read(index);
			print("lseek:");
			read(lseek);
			status = Seek(index,lseek);
			if(status==0)then
				print("changed");
			endif;
			if(status==-1)then
				print("failed");
			endif;
		endif;

		if(num=="append")then
			print("index");
			read(index);
			print("word:");
			read(word);
			sw="a";
			status = Write(index,word);
			if(status==0)then
				print("written");
			endif;
			if(status==-1)then
				print("failed");
			endif;
		endif;
		if(num=="write")then
			print("index");
			read(index);
			print("word:");
			read(word);
			sw="w";
			status = Write(index,word);
			if(status==0)then
				print("written");
			endif;
			if(status==-1)then
				print("failed");
			endif;
		endif;

		if(num=="ls")then
			status = Open("");
		endif;

		if(num=="help")then
			print("-----------------");	
			print("-1.breakpoint");
			print("1.create");
			print("2.delete");
			print("3.open");
			print("4.close");
			print("5.read");
			print("6.seek");
			print("7.write");
			print("8.ls");
			print("9.help");
			print("0.stop");
			print("Type");
		endif;

	endwhile;
	return 0;
}
