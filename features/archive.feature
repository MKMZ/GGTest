@archive
Feature: Functionalities related with covnersation archive

     Scenario: Verify that a message is saved in archive after sending
         Given User is logged in as "607480601" with password "Zuo666"
         And User sends a message "Hello" to "Friend"
         And User goes to archive
         Then User should see a "Hello" message in "Friend" conversation
       