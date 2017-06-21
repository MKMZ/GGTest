Feature: Related with account
    Scenario: Opening login form
        Given User is on the landing page
        When User is clicking on "floating_action_button"
        Then User should see text field "login"
        And User should see text field "password"

    Scenario: Opening new account page
        Given User is on the login page
        And User see the label "UTWÓRZ NOWE KONTO"
        When User click on "UTWÓRZ NOWE KONTO"
        Then User see text "Nowe konto"
        And User see text field "Numer GG, e-mail lub telefon"
        And User see text field "password"
        And User see two checkbox

    Scenario: Creating new account with correct e-mail
        Given User is on the "Nowe konto" page
        When User fill in "contact_channel" field by "sampleMail@op.pl"
        And User fill in "password" field by "Sample123%"
        And User select 2 checkbox 
        And User click "Załóż konto"
        Then User see text field "code_input"

    Scenario: Creating new account with incorrect e-mail
        Given User is on the new account page
        When User fill in "contact_channel" field by "sampleMailop.pl"
        And User fill in the "password" field by "Sample123%"
        And User select 2 checkbox 
        And User click "Załóż konto"
        Then User see text  "Podaj swój numer telefonu lub adres e-mail"

    Scenario: Creating new account with correct phone number
        Given User is on the "Nowe konto" page
        When User fill in "contact_channel" field by "656456345"
        And User fill in "password" field by "Sample123%"
        And User select 2 checkbox 
        And User click "Załóż konto"
        Then User see text field "code_input"

    Scenario: Creating new account with incorrect phone number
        Given User is on the new account page
        When User fill in "contact_channel" field by "1"
        And User fill in the "password" field by "Sample123%"
        And User select 2 checkbox 
        And User click "Załóż konto"
        Then User see text  "Podaj swój numer telefonu lub adres e-mail" 

    
    Scenario: Login in account by correct e-mail
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in "contact_channel" field by "sampleMail@op.pl"
        And User fill in "password" field by "Sample123%"
        And User click "Zaloguj się"
        Then User see acount page

    Scenario: Login in account by correct phone number
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in "contact_channel" field by "546765787"
        And User fill in "password" field by "Sample123%"
        And User click "Zaloguj się"
        Then User see acount page


    Scenario: Login in account by correct gg number
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in "contact_channel" field by "547574873"
        And User fill in "password" field by "Sample123%"
        And User click "Zaloguj się"
        Then User see acount page


    Scenario: Login in account by incorrect e-mail
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in "contact_channel" field by "sampleMailop.pl"
        And User fill in "password" field by "Sample123%"
        And User click "Zaloguj się"
        Then User see alert dialog with text "Nieprawidłowy numer GG lub hasło"


    Scenario: Login in account by incorrect gg number
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in "contact_channel" field by "1"
        And User fill in "password" field by "Sample123%"
        And User click "Zaloguj się"
        Then User see alert dialog with text "Nieprawidłowy numer GG lub hasło"


    Scenario: Login in account by incorrect phone number
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in "contact_channel" field by "1"
        And User fill in "password" field by "Sample123%"
        And User click "Zaloguj się"
        Then User see alert dialog with text "Nieprawidłowy numer GG lub hasło"

    
    Scenario: Login in account by incorrect password
        Given User is on the login page
        And User see text "Zaloguj się"
        When User fill in "contact_channel" field by "sampleMailop.pl"
        And User fill in "password" field by "a"
        And User click "Zaloguj się"
        Then User see alert dialog with text "Nieprawidłowy numer GG lub hasło"


