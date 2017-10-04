decl
   integer status;
   integer status1;
enddecl
integer main(){
  status = Open("guggu.dat");
  print(status);
  status1 = Close(status);
  print(status1);
  return 0;

}
