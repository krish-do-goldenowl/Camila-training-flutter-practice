abstract class Document{
  void open();
  void save();
}

class TextDocument implements Document{
  @override
  void open() {
    print('Opening Text Document');
  }

  @override
  void save() {
    print('Saving Text Document');
  }
}

class SpreadsheetDocument implements Document{
  @override
  void open() {
    print('Opening Spreadsheet Document');
  }

  @override
  void save() {
    print('Saving Spreadsheet Document');
  }
}

abstract class DocumentCreator {
  Document createDocument();
}

class TextDocumentCreator implements DocumentCreator{
  @override 
  Document createDocument(){
    return TextDocument();
  }
}

class SpreadsheetDocumentCreator implements DocumentCreator{
  @override 
  Document createDocument(){
    return SpreadsheetDocument();
  }
}

/*
  DocumentCreator textDocumentCreator = TextDocumentCreator();
  Document textDocument = textDocumentCreator.createDocument();
  textDocument.open();
  textDocument.save();
*/