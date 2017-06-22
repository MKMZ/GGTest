@visibility
Feature: Functionalities related with user status and visibility
    Scenario: Verify that user changed status to 'Zaraz wracam'
        Given User is logged in as "607480601" with password "Zuo666"
        And User sees list of contacts
        And  User opens user panel
        When User is clicking on "Zaraz wracam"
#        Then User's status should be set to "Zaraz wracam"

#    Scenario: Verify that user changed status to 'Nie przeszkadzać'
#        Given User is logged in as "607480601" with password "Zuo666"
#        And User sees list of contacts
#        And  User opens user panel
#        When User is clicking on "Nie przeszkadzać"
##        Then User's status should be set to "Nie przeszkadzać"
#
#    Scenario: Verify that user changed status to 'Niewidoczny'
#        Given User is logged in as "607480601" with password "Zuo666"
#        And User sees list of contacts
#        And  User opens user panel
#        When User is clicking on "Niewidoczny"
#        Then User's status should be set to "Niewidoczny"