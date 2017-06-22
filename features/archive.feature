@archive
Feature: Functionalities related with covnersation archive

     Scenario: Verify that a message is saved in archive after sending
         Given User is logged in as "607480601" with password "Zuo666"
         And User sends a message "Hello" to "Friend"
         And User goes to archive
         Then User should see a "Hello" message in "Friend" conversation

     Scenario: Verify that messages are not archived when archiving is disabled
         Given User is logged in as "607480601" with password "Zuo666"
         And User opens user panel
         And User is clicking on "Ustawienia"
         And User disables message archiving option
         And User presses back button
         Then User should see account page
         And User sends a message "Hello" to "Friend"
         And User goes to archive
         Then User should not see any new messages in archive
       