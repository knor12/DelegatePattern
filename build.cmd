SET C++=g++.exe
SET CC++FLAGS=-std=gnu++0x 
SET LFLAG=-std=gnu++0x -static-libgcc  -static-libstdc++

echo "----------------Cleaning----------------"
del *.exe 
del *.o
del *.gch

echo "----------------Compiling----------------"
%C++% -c  %CC++FLAGS% main.cpp
%C++% -c  %CC++FLAGS% Person.cpp
%C++% -c  %CC++FLAGS% ActionRun.cpp
%C++% -c  %CC++FLAGS% ActionWalk.cpp
%C++% -c  %CC++FLAGS% ActionSwim.cpp

echo "------------------Linking----------------"
%C++%  %LFLAG% main.o Person.o ActionRun.o ActionWalk.o ActionSwim.o -o main.exe