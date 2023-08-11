Feature: TestRunner

#                                       Call from Karate_Script1.feature
#  ---------------------------------------------------------------------------------------------------

#  Scenario: Called from Karate_ApiPost
##    __arg.Name_of_the_variable_passed_from_calling_feature_file
#    * print __arg.emailAddress

# ------------------------------------------------------------------------------------



# Call java program from feature file
  @Java
Scenario: Call java program from feature file

* def emailText = "Igot67marksandsecured30position"
* def otpCode = Java.type('org.example.StringUtil').getNumberFromString(emailText)
* print otpCode