import os

def create_combined_list(directory):
  file_list = os.listdir(directory)
  combined_list = [] 
  for file in file_list:
    with open(directory + "/" + file) as cur_file:
      combined_list.append([file, 0, []])
      for line in cur_file:
        combined_list[-1][2].append(line.strip())
        combined_list[-1][1] += 1

  return sorted(combined_list, key= lambda x: x[1])


def create_file_from_directory(directory, filename):
  with open (directory + "/" + filename + '.txt', 'w+') as newfile:
      for file in create_combined_list(directory):
        newfile.write(f'{file[0]}\n')
        newfile.write(f'{file[1]}\n')
        for string in file[2]:
          newfile.write(string + '\n')
        newfile.write('\n')


create_combined_list(r'C:\\Users\805520\Desktop\homeworks\text')
create_file_from_directory(r'C:\\Users\805520\Desktop\homeworks\text', 'my_file')