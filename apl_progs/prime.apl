
decl
 	integer a,b,c,d,e,n;
 	integer prime(integer b);
 	
enddecl

integer prime(integer b){
	c=2;d=1;
	while(c<b)do
		if(b%c==0)then
			d=0;
			break;
		endif;
	c=c+1;
	endwhile;
	
	return d;
}

integer main(){
        breakpoint;
	print("enter n :");
	read(n);
	a=2;
	while(a!=n)do
		b=prime(a);
		if(b==1) then
			print(a);
		endif;
		a=a+1;
	endwhile;
	
	return 0;
		
		
}
