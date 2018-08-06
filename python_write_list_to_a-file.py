#!/usr/bin/python

l1=['hi','hello','welcome']

f=open('python_list_written_to_file_1.txt','w')
for ele in l1:
    f.write(ele+'\n')

f=open('python_list_written_to_file_2.txt','w')
s1='\n'.join(l1)
f.write(s1)
f.write('\n')
f.close()

with open('python_list_written_to_file_3.txt','w') as f:
  f.write('\n'.join(l1))

f=open('python_list_written_to_file_4.txt','w')
l1=map(lambda x:x+'\n', l1)
f.writelines(l1)
f.close()



f.close()
