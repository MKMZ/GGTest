@archive
Feature: Functionalities related with covnersation archive

     Scenario: Verify that a message is saved in archive after sending
         Given User is logged in as "607480601" with password "Zuo666!"
         And User has a contact "Kumpel" with GG number "8012682"
         And User entered conversation with "Kumpel"
         When User entered text of message "Hello"
         And User presses back button
         And User opens user panel
         And User is clicking on "Archiwum"
         And User is in archive screen
         And User is clicking on "Kumpel"
         Then User should see text  "Hello"

#     Scenario: Verify that messages are not archived when archiving is disabled
#         Given User is logged in as "607480601" with password "Zuo666"
#         And User opens user panel
#         And User is clicking on "Ustawienia"
#         And User disables message archiving option
#         And User presses back button
#         Then User should see account page
#         And User sends a message "Hello" to "Friend"
#         And User goes to archive
#         Then User should not see any new messages in archive
