Feature: TestRunner
  Background:
  * configure driver = { type:'chrome', addOptions: ["--remote-allow-origins=*"], executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }

  @FirstProgram
  Scenario: First web browser automation
    Given driver 'http://google.com/'
    * driver.maximize()
    * delay(2000)
#    * driver.fullscreen()
#    * delay(2000)
#    And click("#L2AGLb")
    And input('textarea[name=q]','Sagar MAtsagar')
    * delay(2000)
    * print 'Position:', position('input[name=btnK]')
    When click('input[name=btnK]')
    * delay(4000)
    * screenshot()
    * driver.back()
##    * driver.back()
    * delay(4000)
##    * driver.forward()
##    * delay(3000)
    * print "URL is: ", driver.url
#    * print 'Dimension is:', driver.dimensions
#    * print 'Session id:', driver.sessionId
#    * print 'Before Cookies:', driver.cookies
#    * clearCookies()
    * print 'After Cookies:', driver.cookies
    * delay(4000)

  @Navigation
  Scenario: Refresh and Reload
    Given driver 'https://demoqa.com/'
    And driver.maximize()
    * delay(2000)
    * def expectedURL = 'https://demoqa.com/'
    * def navigatedURL = driver.url
    Then match expectedURL == navigatedURL
    And click('{}Elements')
#   Normal page reload, does not clear cache.
    Then script('sessionStorage.setItem("lastname", "Smith")')
    When driver.refresh()
    Then print 'After refresh:', script('sessionStorage.getItem("lastname")')
#   Hard page reload, which will clear the cache.
    When driver.reload()
    Then print 'After reload:', script('sessionStorage.getItem("lastname")')
    * delay(2000)


    #-----------------------------Enter value in Text----------------------------------------------
  @TextORTextArea
  Scenario: Handling Text and Text area
    Given driver 'https://demoqa.com/'
    And driver.maximize()
    And click('{}Elements')
    * delay(2000)
    And click('{}Text Box')
#-------------------------Enter value in Text-----------------------------------------------------------
#    input('tag_name[attribute_Name=attribute_value]','value_to_enter_in_text_box')
    * input('input[id=userName]','Sagar')
    * input('input[id=userEmail]','sagar.matsagar@aaaa.net')
#-------------------------Enter value in Text Area ------------------------------------------------------
    * input('#currentAddress','United Kingdom')
    * input('#permanentAddress','Pune India')
    * delay(2000)
#-------------------------clicking on Check box-----------------------------------------------
  @CheckBox
  Scenario: Check Box handling
    Given driver 'https://demoqa.com/'
    And driver.maximize()
    And click('{}Elements')
    * delay(3000)
    And click('{}Check Box')
    Then click('{}Home')
    * delay(4000)



#-----------------------Read the text values from web table-----------------------------------------
  @WebTables
  Scenario: Web Tables handling
    Given driver 'https://demoqa.com/'
    And driver.maximize()
    And click('{}Elements')
    * delay(2000)
    * click('{}Web Tables')
    * delay(4000)
    * def list = scriptAll('div[class=rt-td]', "_.innerHTML")
    * print 'First Row:', list[0], list[1], list[2], list[3], list[4], list[5]
    * print 'First Names:', list[0], list[7], list[14]
    * print 'Last Names:', list[1], list[8], list[15]
    * print 'Emails:', list[3] , list[10], list[17]
    * delay(4000)




#------------------------Highlight and HighlightAll--------------------------------------
  @HighLight
  Scenario: Highlight or HighLightAll the objects on the page
    Given driver 'https://www.google.com'
#    And click("#L2AGLb")
    And delay(2000)
    When input('textarea[name=q]','Karate DSL')
    Then input('textarea[name=q]','').highlight()
    And highlightAll('input')
#----------------------------------------------------------------------------------------
@Demo
Scenario: Check webElements
  Given driver 'https://www.postman.com/'
  And driver.maximize()
  And delay(2000)
  When click('{}Pricing')
  And delay(3000)