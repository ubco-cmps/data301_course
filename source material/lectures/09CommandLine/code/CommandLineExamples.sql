---- examples on a mac:
---- navigate to the "Example" folder

ls
cd 301
pwd
mkdir junkfolder
remdir junkfolder

--- change the name of a file
mv count.txt newcount.txt
--- change it back
mv newcount.txt count.txt
--- copy a file
cp count.txt count2.txt
--- delete/remove a file
rm count2.txt 
--- move a file using relative path
mv count.txt ./nested
--- move using absolulte path
mv ~/Demo/Example/nested/count.txt ~/Demo/Example/


-- open text editor
nano
-- open text editor and specify name to save
nano willsaveas.txt
-- echo output
echo notice how i dont need quotes
-- echo output
echo "don't exclude quotes if you have special characters"
-- see contents of a file
cat numbers.txt
-- sort 
sort numbers.txt




-- Windows:
mkdir 301
cd 301
echo I am awesome!
cd
notepad message.txt
dir
ren message.txt test.txt
dir
del test.txt
cd ..
rmdir 301

-- Linux/Mac: 
mkdir 301
echo I am awesome!
pwd
nano message.txt
ls
mv message.txt test.txt
ls
rm test.txt
cd ..
rmdir 301


---- pipe example:
cat test.txt | wc 
ls | sort


---1) Sort:
sort numbers.txt > sorted.txt

---2) Word count (only works on Mac/Linux):
wc numbers.txt > count.txt

---3) Append three times:
 cat numbers.txt > output.txt 
 cat numbers.txt >> output.txt 
 cat numbers.txt >> output.txt 

---4) Grep (Mac/Linux):
grep e output.txt

find "e" output.txt

---5) 
cat sorted.txt
cat output.txt
cat search.txt

-- replace cat by more when using windows


-- To execute that batch file on a mac: 
-- navigate to the folder with myscript.sh and type:

./myscript.sh

-- if you get the error "permission denied" change the 
-- permisions by typing 
chmod 777 myscript.sh


-- on a windows, navigate to the folder and type:
myscript.bat

