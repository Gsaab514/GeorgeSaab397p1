BEGIN {
	  system("mkdir  TOP")
	  system("mkdir ./TOP/c04")
	  system("mkdir ./TOP/c05")
	  system("mkdir ./TOP/c06")
	  system("mkdir ./TOP/c07")
	  system("mkdir ./TOP/c08")
	  system("mkdir ./TOP/c09")
	  system("mkdir ./TOP/c10")
	  system("mkdir ./TOP/c11")
	  system("mkdir ./TOP/c12")
	  system("mkdir ./TOP/c13")
	  system("mkdir ./TOP/c14")
	  system("cp ./Files/index.html TOP")
      }

NR{
	if(max_nf < NF )
		max_nf = NF
	max_nr = NR
	for( x=1; x<=NF; x++)
		vector[x,NR] = $x
}

END {
  for (x = 4; x <= max_nf; x++) {
	if( x == 04 )cdir =  "./TOP/c04/" 
	if( x == 05 )cdir =  "./TOP/c05/" 
	if( x == 06 )cdir =  "./TOP/c06/" 
	if( x == 07 )cdir =  "./TOP/c07/" 
	if( x == 08 )cdir =  "./TOP/c08/" 
	if( x == 09 )cdir =  "./TOP/c09/" 
	if( x == 10 )cdir =  "./TOP/c10/" 
	if( x == 11 )cdir =  "./TOP/c11/" 
	if( x == 12 )cdir =  "./TOP/c12/" 
	if( x == 13 )cdir =  "./TOP/c13/" 
	
	if( x == 14 )cdir =  "./TOP/c04/" 
	if( x == 15 )cdir =  "./TOP/c05/" 
	if( x == 16 )cdir =  "./TOP/c06/" 
	if( x == 17 )cdir =  "./TOP/c07/" 
	if( x == 18 )cdir =  "./TOP/c08/" 
	if( x == 19 )cdir =  "./TOP/c09/" 
	if( x == 20 )cdir =  "./TOP/c10/" 
	if( x == 21 )cdir =  "./TOP/c11/" 
	if( x == 22 )cdir =  "./TOP/c12/" 
	if( x == 23 )cdir =  "./TOP/c13/" 

	if( x == 24 )cdir =  "./TOP/c04/" 
	if( x == 25 )cdir =  "./TOP/c05/" 
	if( x == 26 )cdir =  "./TOP/c06/" 
	if( x == 27 )cdir =  "./TOP/c07/" 
	if( x == 28 )cdir =  "./TOP/c08/" 
	if( x == 29 )cdir =  "./TOP/c09/" 
	if( x == 30 )cdir =  "./TOP/c10/" 
	if( x == 31 )cdir =  "./TOP/c11/" 
	if( x == 32 )cdir =  "./TOP/c12/" 
	if( x == 33 )cdir =  "./TOP/c13/" 

	if( x == 34 )cdir =  "./TOP/c14/" 
	if( x == 35 )cdir =  "./TOP/c15/" 

	if( x == 04 )title =  "text: \"Radius (mean of distances from center to points on the perimeter)\"" 
	if( x == 05 )title =  "text: \"Texture (standard deviation of gray-scale values)\"" 
	if( x == 06 )title =  "text: \"Perimeter\"" 
	if( x == 07 )title =  "text: \"Area\"" 
	if( x == 08 )title =  "text: \"Smoothness (local variation in radius lengths)\"" 
	if( x == 09 )title =  "text: \"Compactness (perimeter^2 / area - 1.0)\"" 
	if( x == 10 )title =  "text: \"Concavity (severity of concave portions of the contour)\"" 
	if( x == 11 )title =  "text: \"Concave points (number of concave portions of the contour)\"" 
	if( x == 12 )title =  "text: \"Symmetry\"" 
	if( x == 13 )title =  "text: \"Fractal dimension \"" 
	
	if( x == 14 )title =  "text: \"SE Radius (mean of distances from center to points on the perimeter)\"" 
	if( x == 15 )title =  "text: \"SE Texture (standard deviation of gray-scale values)\"" 
	if( x == 16 )title =  "text: \"SE Perimeter\"" 
	if( x == 17 )title =  "text: \"SE Area\"" 
	if( x == 18 )title =  "text: \"SE Smoothness (local variation in radius lengths)\"" 
	if( x == 19 )title =  "text: \"SE Compactness (perimeter^2 / area - 1.0)\"" 
	if( x == 20 )title =  "text: \"SE Concavity (severity of concave portions of the contour)\"" 
	if( x == 21 )title =  "text: \"SE Concave points (number of concave portions of the contour)\"" 
	if( x == 22 )title =  "text: \"SE Symmetry\"" 
	if( x == 23 )title =  "text: \"SE Fractal dimension \"" 
	
	if( x == 24 )title =  "text: \"Worst Radius (mean of distances from center to points on the perimeter)\"" 
	if( x == 25 )title =  "text: \"Worst Texture (standard deviation of gray-scale values)\"" 
	if( x == 26 )title =  "text: \"Worst Perimeter\"" 
	if( x == 27 )title =  "text: \"Worst Area\"" 
	if( x == 28 )title =  "text: \"Worst Smoothness (local variation in radius lengths)\"" 
	if( x == 29 )title =  "text: \"Worst Compactness (perimeter^2 / area - 1.0)\"" 
	if( x == 30 )title =  "text: \"Worst Concavity (severity of concave portions of the contour)\"" 
	if( x == 31 )title =  "text: \"Worst Concave points (number of concave portions of the contour)\"" 
	if( x == 32 )title =  "text: \"Worst Symmetry\"" 
	if( x == 33 )title =  "text: \"Worst Fractal dimension \"" 
	

	if( x == 34 )title =  "text: \"Tumor size\"" 
	if( x == 35 )title =  "text: \"Lymph node status\"" 
       max[x] = -1 
       minf[x] = 100000.0
       for (y = max_nr; y >= 1; --y){
               if(max[x] <  vector[x, y])
		   max[x] = vector[x, y]
               if(minf[x] >  vector[x, y])
		   minf[x] = vector[x, y]
       }
       inc = (max[x]-minf[x])/10.0
       min = minf[x]

       for(i=0;i<10;i++)
	       field[i]=0
       for (y = max_nr; y >= 4; --y){
          if(vector[x, y]>=min       && vector[x,y] <  min+inc) field[0] = field[0] + 1;
          if(vector[x, y]>=min+  inc && vector[x,y] < min+2*inc) field[1] = field[1] + 1;
          if(vector[x, y]>=min+2*inc && vector[x,y] <  min+3*inc) field[2] = field[2] + 1;
          if(vector[x, y]>=min+3*inc && vector[x,y] <  min+4*inc) field[3] = field[3] + 1;
          if(vector[x, y]>=min+4*inc && vector[x,y] <  min+5*inc) field[4] = field[4] + 1;
          if(vector[x, y]>=min+5*inc && vector[x,y] <  min+6*inc) field[5] = field[5] + 1;
          if(vector[x, y]>=min+6*inc && vector[x,y] <  min+7*inc) field[6] = field[6] + 1;
          if(vector[x, y]>=min+7*inc && vector[x,y] <  min+8*inc) field[7] = field[7] + 1;
          if(vector[x, y]>=min+8*inc && vector[x,y] <=  max[x]) field[9] = field[9] + 1;
       }
       if( x < 14){
       	g1file = "outf1"
       	for(i=0;i<10;i++)
	    	if(i!=9)
	       		printf("{ label: \"%f\",  y:%d},\n",   min+(i+1)*inc, field[i]) > g1file
	    	else
	       		printf("{ label: \"%f\",  y:%d}\n",   min+(i+1)*inc, field[i]) > g1file
       	tfile = "title.txt"
       	printf title > tfile;
	
       	cmd = "cat ./Files/p1.txt title.txt ./Files/p2.txt outf1 ./Files/p3.txt  > "  cdir "/aa.html"
       	system(cmd)
       	close(g1file)
       	close(tfile)
       	close(file1)
       }
       if( x < 24 && x >=14){
       	g1file = "outf1"
       	for(i=0;i<10;i++)
	    	if(i!=9)
	       		printf("{ label: \"%f\",  y:%d},\n",   min+(i+1)*inc, field[i]) > g1file
	    	else
	       		printf("{ label: \"%f\",  y:%d}\n",   min+(i+1)*inc, field[i]) > g1file
       	tfile = "title.txt"
       	printf title > tfile;

       	cmd = "cat ./Files/p1.txt title.txt ./Files/p2.txt outf1 ./Files/p3.txt  > "  cdir "/SEaa.html"
       	system(cmd)
       	close(g1file)
       	close(tfile)
       }
       if( x >= 24 && x < 34 ){
       	g1file = "outf1"
       	for(i=0;i<10;i++)
	    	if(i!=9)
	       		printf("{ label: \"%f\",  y:%d},\n",   min+(i+1)*inc, field[i]) > g1file
	    	else
	       		printf("{ label: \"%f\",  y:%d}\n",   min+(i+1)*inc, field[i]) > g1file
       	tfile = "title.txt"
       	printf title > tfile;
	
       	cmd = "cat ./Files/p1.txt title.txt ./Files/p2.txt outf1 ./Files/p3.txt  > "  cdir "/WRaa.html"
       	system(cmd)
       	close(g1file)
       	close(tfile)
       }


       for(i=0;i<10;i++)
	       field[i]=0
       for (y = max_nr; y >= 4; --y){
          if(vector[x, y]>=min       && vector[x,y] <  min+inc    && vector[2,y] == "0" ) field[0] = field[0] + 1;
          if(vector[x, y]>=min+  inc && vector[x,y] <  min+2*inc  && vector[2,y] == "0" ) field[1] = field[1] + 1;
          if(vector[x, y]>=min+2*inc && vector[x,y] <  min+3*inc  && vector[2,y] == "0" ) field[2] = field[2] + 1;
          if(vector[x, y]>=min+3*inc && vector[x,y] <  min+4*inc  && vector[2,y] == "0" ) field[3] = field[3] + 1;
          if(vector[x, y]>=min+4*inc && vector[x,y] <  min+5*inc  && vector[2,y] == "0" ) field[4] = field[4] + 1;
          if(vector[x, y]>=min+5*inc && vector[x,y] <  min+6*inc  && vector[2,y] == "0" ) field[5] = field[5] + 1;
          if(vector[x, y]>=min+6*inc && vector[x,y] <  min+7*inc  && vector[2,y] == "0" ) field[6] = field[6] + 1;
          if(vector[x, y]>=min+7*inc && vector[x,y] <  min+8*inc  && vector[2,y] == "0" ) field[7] = field[7] + 1;
          if(vector[x, y]>=min+8*inc && vector[x,y] <=  max[x]    && vector[2,y] == "0" ) field[9] = field[9] + 1;
       }

       if( x < 14){
       	g1file = "outf1"
       	for(i=0;i<10;i++)
	    if(i!=9)
	       	printf("{ label: \"%f\",  y:%d},\n",   min+(i+1)*inc, field[i]) > g1file
	    else
	       	printf("{ label: \"%f\",  y:%d}\n",   min+(i+1)*inc, field[i]) > g1file
       	tfile = "title.txt"
       	printf title > tfile;

       	cmd = "cat ./Files/p1.txt title.txt ./Files/p2.txt outf1 ./Files/p3.txt  > "  cdir "/na.html"
       	system(cmd)
       	file1 = "part1.txt"
       	cmd = "cat ./Files/cp1.txt title.txt ./Files/cp2.txt outf1 ./Files/cp3.txt > " file1
       	system(cmd)
       	close(g1file)
       	close(tfile)
       }
       if( x < 24 && x >=14){
       	g1file = "outf1"
       	for(i=0;i<10;i++)
	    if(i!=9)
	       	printf("{ label: \"%f\",  y:%d},\n",   min+(i+1)*inc, field[i]) > g1file
	    else
	       	printf("{ label: \"%f\",  y:%d}\n",   min+(i+1)*inc, field[i]) > g1file
       	tfile = "title.txt"
       	printf title > tfile;

       	cmd = "cat ./Files/p1.txt title.txt ./Files/p2.txt outf1 ./Files/p3.txt  > "  cdir "/SEna.html"
       	system(cmd)

       	file1 = "part1.txt"
       	cmd = "cat ./Files/cp1.txt title.txt ./Files/cp2.txt outf1 ./Files/cp3.txt > " file1
       	system(cmd)

       	close(g1file)
       	close(tfile)
       }
       if( x >= 24 &&  x < 34 ){
       	g1file = "outf1"
       	for(i=0;i<10;i++)
	    if(i!=9)
	       	printf("{ label: \"%f\",  y:%d},\n",   min+(i+1)*inc, field[i]) > g1file
	    else
	       	printf("{ label: \"%f\",  y:%d}\n",   min+(i+1)*inc, field[i]) > g1file
       	tfile = "title.txt"
       	printf title > tfile;

       	cmd = "cat ./Files/p1.txt title.txt ./Files/p2.txt outf1 ./Files/p3.txt  > "  cdir "/WRna.html"
       	system(cmd)
       	file1 = "part1.txt"
       	cmd = "cat ./Files/cp1.txt title.txt ./Files/cp2.txt outf1 ./Files/cp3.txt > " file1
       	system(cmd)
       	close(g1file)
       	close(tfile)
       }

       for(i=0;i<10;i++)
	       field[i]=0
       for (y = max_nr; y >= 4; --y){
          if(vector[x, y]>=min       && vector[x,y] <  min+inc    && vector[2,y] == 1) field[0] = field[0] + 1;
          if(vector[x, y]>=min+  inc && vector[x,y] < min+2*inc   && vector[2,y] == 1 ) field[1] = field[1] + 1;
          if(vector[x, y]>=min+2*inc && vector[x,y] <  min+3*inc  && vector[2,y] == 1 ) field[2] = field[2] + 1;
          if(vector[x, y]>=min+3*inc && vector[x,y] <  min+4*inc  && vector[2,y] == 1 ) field[3] = field[3] + 1;
          if(vector[x, y]>=min+4*inc && vector[x,y] <  min+5*inc  && vector[2,y] == 1 ) field[4] = field[4] + 1;
          if(vector[x, y]>=min+5*inc && vector[x,y] <  min+6*inc  && vector[2,y] == 1 ) field[5] = field[5] + 1;
          if(vector[x, y]>=min+6*inc && vector[x,y] <  min+7*inc  && vector[2,y] == 1 ) field[6] = field[6] + 1;
          if(vector[x, y]>=min+7*inc && vector[x,y] <  min+8*inc  && vector[2,y] == 1 ) field[7] = field[7] + 1;
          if(vector[x, y]>=min+8*inc && vector[x,y] <=  max[x]    && vector[2,y] == 1 ) field[9] = field[9] + 1;
       }

       if( x < 14){
       	g1file = "outf1"
       	for(i=0;i<10;i++)
	    	if(i!=9)
	       		printf("{ label: \"%f\",  y:%d},\n",   min+(i+1)*inc, field[i]) > g1file
	    	else
	       		printf("{ label: \"%f\",  y:%d}\n",   min+(i+1)*inc, field[i]) > g1file
       	tfile = "title.txt"
       	printf title > tfile;
	
       	cmd = "cat ./Files/p1.txt title.txt ./Files/p2.txt outf1 ./Files/p3.txt  > "  cdir "/ca.html"
       	system(cmd)

	cmd = "cat part1.txt outf1 ./Files/cp4.txt > " cdir "/co.html"
	system(cmd)

       	close(g1file)
       	close(tfile)
       }
       if( x < 24 && x >=14){
       	g1file = "outf1"
       	for(i=0;i<10;i++)
	    	if(i!=9)
	       		printf("{ label: \"%f\",  y:%d},\n",   min+(i+1)*inc, field[i]) > g1file
	    	else
	       		printf("{ label: \"%f\",  y:%d}\n",   min+(i+1)*inc, field[i]) > g1file
       	tfile = "title.txt"
       	printf title > tfile;

       	cmd = "cat ./Files/p1.txt title.txt ./Files/p2.txt outf1 ./Files/p3.txt  > "  cdir "/SEca.html"
       	system(cmd)

	cmd = "cat part1.txt outf1 ./Files/cp4.txt > " cdir "/SEco.html"
	system(cmd)

       	close(g1file)
       	close(tfile)
       	close(file1)
       }
       if( x >= 24 && x < 34 ){
       	g1file = "outf1"
       	for(i=0;i<10;i++)
	    	if(i!=9)
	       		printf("{ label: \"%f\",  y:%d},\n",   min+(i+1)*inc, field[i]) > g1file
	    	else
	       		printf("{ label: \"%f\",  y:%d}\n",   min+(i+1)*inc, field[i]) > g1file
       	tfile = "title.txt"
       	printf title > tfile;
	
       	cmd = "cat ./Files/p1.txt title.txt ./Files/p2.txt outf1 ./Files/p3.txt  > "  cdir "/WRca.html"
	system(cmd)
	cmd = "cat part1.txt outf1 ./Files/cp4.txt > " cdir "/WRco.html"
       	system(cmd)
       	close(g1file)
       	close(tfile)
       	close(file1)
       }
  }
  system("rm outf1  title.txt part1.txt")
}
