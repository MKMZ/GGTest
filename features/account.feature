Feature: Related with account
    Scenario: Opening login form
        Given User is on the landing page
        And User see the label "Kliknij przycisk +"
        When User click on "+"
        Then User see text "Zaloguj się"
        And User see text field "Numer GG, e-mail lub telefon"
        And User see text field "Hasło"

    Scenario: Opening new account page
        Given User is on the login page
        And User see the label "UTWÓRZ NOWE KONTO"
        When User click on "UTWÓRZ NOWE KONTO"
        Then User see text "Nowe konto"
        And User see text field "Numer GG, e-mail lub telefon"
        And User see text field "Hasło"
        And User see two checkbox

    Scenario: Creating new account
        Given User is on the new account page
        And User see in the first text field "sampleMail@op.pl"
        And User see in the second text field "**********"
        And User see two checkbox are selected
        When User click "Załóż konto"
        Then User see text field "e-mail code"
    
    