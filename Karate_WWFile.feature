Feature: TestRunner
  @CSV
  Scenario: Working with CSV files
#    Read CSV File
  * def myReqCSV = read('classpath:TestData/demo.csv')
  * print 'CSV data:', myReqCSV
  * print myReqCSV
  * print myReqCSV[0]

  @JSON
  Scenario: Working with Json files
#    Read JSON File
    * def myReqJson = read('classpath:TestData/demo.json')
    * print 'Json data:', myReqJson
    * print myReqJson
    * print 'My Favorite Fruit',myReqJson.fruit
  @PDF
  Scenario: Working with PDF files
#    Read PDF File
    * def myReqPdf = read('classpath:TestData/demo.pdf')
    * print 'PDF data:', myReqPdf
    * print myReqPdf

  @XML
  Scenario: Working with XML files
#    Read XML File
    * def response = read('classpath:TestData/demo.xml')
#    Always Define response var for read data
#    * print 'CSV data:', response
#    * print response
      * def demoCustomer = //book[@id='aa11']/author
      * print 'Company name of First Customer :', demoCustomer
      * def demoCustomerContact = //Customer[@CustomerID='GREAL']/Phone
      * print 'demoCustomerContact of First Customer :', demoCustomerContact

  @TXT
  Scenario: Working with TXT files
#    Read TXT File
    * def myReqTxt = read('classpath:TestData/demo.txt')
    * print 'TXT data:', myReqTxt
    * print myReqTxt