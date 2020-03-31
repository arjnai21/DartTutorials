import 'dart:convert';
import 'dart:io';

void list(String path){
  try {
    Directory root = Directory(path);
    if(root.existsSync()){
      for(FileSystemEntity f in root.listSync()){
        print(f.path);
      }
    }
  }
  catch(e){
    print(e.toString());
  }
}

bool writeFile(String file, String data, FileMode mode){
  try{
    File f = new File(file);
    RandomAccessFile rf = f.openSync(mode: mode);
    rf.writeStringSync(data);
    rf.flushSync();
    rf.closeSync();
    return true;
  }
  catch(e){
    print(e.toString());
    return false;
  }
}

String readFile(String file){
  try{
    File f = new File(file);
    return f.readAsStringSync();  
  }
  catch(e){
    print(e.toString());
  }
}

main(List<String> arguments){
  String path = 'C:/Users/arjun/IdeaProjects/DartTuts/17 - file IO';
  String txtFile = "testing.txt";
  list(path);
  //print(new File("testing.txt").readAsStringSync());

  if(writeFile(txtFile, "Hello World\n", FileMode.append)){
    print(readFile(txtFile));
  }


}
