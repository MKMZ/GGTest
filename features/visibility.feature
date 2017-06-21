@visibility
Feature: Functionalities related with user status and visibility
    Scenario: Verify that user changed status to 'Zaraz wracam'
        Given User is logged in as "607480601" with password "Zuo666"
        Then User should see account page
        And  User opens user panel
        When User is clicking on "Zaraz wracam"
        And User selects "Zaraz wracam" status
        Then User's status should be set to "Zaraz wracam"

    Scenario: Verify that user changed status to 'Nie przeszkadzać'
        Given User is logged in as "607480601" with password "Zuo666"
        Then User should see account page
        And  User opens user panel
        When User is clicking on "Nie przeszkadzać"
        And User selects "Zaraz wracam" status
        Then User's status should be set to "Nie przeszkadzać"

    Scenario: Verify that user changed status to 'Niewidoczny'
        Given User is logged in as "607480601" with password "Zuo666"
        Then User should see account page
        And  User opens user panel
        When User is clicking on "Niewidoczny"
        And User selects "Zaraz wracam" status
        Then User's status should be set to "Niewidoczny"