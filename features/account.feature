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

    Scenario: Creating new account with correct e-mail
        Given User is on the new account page
        When User fill in first text field by "sampleMail@op.pl"
        And User fill in the second text field by "Sample123%"
        And User select two checkbox 
        And User click "Załóż konto"
        Then User see text field "e-mail code"

    Scenario: Creating new account with incorrect e-mail
        Given User is on the new account page
        When User fill in first text field by "sampleMailop.pl"
        And User fill in the second text field by "Sample123%"
        And User select two checkbox 
        And User click "Załóż konto"
        Then User see text  "Nieprawidłowy e-mail"

    
    Scenario: Login in account by correct e-mail
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in first text field by "sampleMail@op.pl"
        And User fill in second text field by "Sample123%"
        And User click "Zaloguj się"
        Then User see acount page


    Scenario: Login in account by correct phone number
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in first text field by "518987453"
        And User fill in second text field by "Sample123%"
        And User click "Zaloguj się"
        Then User see acount page

    Scenario: Login in account by correct gg number
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in first text field by "547574873"
        And User fill in second text field by "Sample123%"
        And User click "Zaloguj się"
        Then User see acount page


    Scenario: Login in account by incorrect e-mail
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in first text field by "sampleMailop.pl"
        And User fill in second text field by "Sample123%"
        And User click "Zaloguj się"
        Then User see alert dialog with text "Nieprawidłowy numer GG lub hasło"


    Scenario: Login in account by incorrect gg number
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in first text field by "1"
        And User fill in second text field by "Sample123%"
        And User click "Zaloguj się"
        Then User see alert dialog with text "Nieprawidłowy numer GG lub hasło"


    Scenario: Login in account by incorrect phone number
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in first text field by "1"
        And User fill in second text field by "Sample123%"
        And User click "Zaloguj się"
        Then User see alert dialog with text "Nieprawidłowy numer GG lub hasło"

    
    Scenario: Login in account by incorrect password
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in first text field by "sampleMailop.pl"
        And User fill in second text field by "a"
        And User click "Zaloguj się"
        Then User see alert dialog with text "Nieprawidłowy numer GG lub hasło"


