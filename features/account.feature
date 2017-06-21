Feature: Related with account
    # Scenario: Opening login form
    #     Given User is on the landing page
    #     When User is clicking on item of id "floating_action_button"
    #     Then User should see text field "login"
    #     And User should see text field "password"

    # Scenario: Opening new account page
    #     Given User is on the login page
    #     And User see the label "Utwórz Nowe Konto"
    #     When User is clicking on "Utwórz nowe konto"
    #     Then User should see text "Nowe konto"
    #     And User should see text field "contact_channel"
    #     And User should see text field "password"
    #     And User should see 2 checkboxes

    # Scenario: Creating new account with correct e-mail
    #     Given User is on the new account page
    #     And User is on the "Nowe konto" page
    #     When User is filling in "contact_channel" field by "sampleMail@op.pl"
    #     And User is filling in "password" field by "Sample123%"
    #     And User select 2 checkboxes 
    #     And User is clicking on "Załóż konto"
    #     Then User should see text field "code_input"

    # Scenario: Creating new account with incorrect e-mail
    #     Given User is on the new account page
    #     When User is filling in "contact_channel" field by "sampleMailop.pl"
    #     And User is filling in "password" field by "Sample123%"
    #     And User select 2 checkboxes 
    #     And User is clicking on "Załóż konto"
    #     Then User should see text "Podaj swój numer telefonu lub adres e-mail"

    # Scenario: Creating new account with correct phone number
    #     Given User is on the new account page
    #     And User sees text "Nowe konto" on the header
    #     When User is filling in "contact_channel" field by "656456345"
    #     And User is filling in "password" field by "Sample123%"
    #     And User select 2 checkboxes 
    #     And User is clicking on "Załóż konto"
    #     Then User should see text "Trwa potwierdzanie numeru telefonu"

    # Scenario: Creating new account with incorrect phone number
    #     Given User is on the new account page
    #     When User is filling in "contact_channel" field by "1"
    #     And User is filling in "password" field by "Sample123%"
    #     And User select 2 checkboxes 
    #     And User is clicking on "Załóż konto"
    #     Then User should see text  "Podaj swój numer telefonu lub adres e-mail" 

    
    # Scenario: Login in account by correct e-mail
    #     Given User is on the login page
    #     And User sees text "Zaloguj się" on the header
    #     When User is filling in "login" field by "mkmz91@gmail.com"
    #     And User is filling in "password" field by "Zuo666"
    #     And User is clicking by id "login_button"
    #     Then User should see account page

    # Scenario: Login in account by correct phone number
    #     Given User is on the login page
    #     And User sees text "Zaloguj się" on the header
    #     When User is filling in "login" field by "607480601"
    #     And User is filling in "password" field by "Zuo666"
    #     And User is clicking by id "login_button"
    #     Then User should see account page


    # Scenario: Login in account by correct gg number
    #     Given User is on the login page
    #     And User sees text "Zaloguj się" on the header
    #     When User is filling in "login" field by "63034445"
    #     And User is filling in "password" field by "Zuo666"
    #     And User is clicking by id "login_button"
    #     Then User should see account page


    # Scenario: Login in account by incorrect e-mail
    #     Given User is on the login page
    #     And User sees text "Zaloguj się" on the header
    #     When User is filling in "login" field by "sampleMailop.pl"
    #     And User is filling in "password" field by "Sample123%"
    #     And User is clicking by id "login_button"
    #     Then User should see alert dialog with text "Nieprawidłowy numer GG lub hasło"


    # Scenario: Login in account by incorrect phone number or gg number
    #     Given User is on the login page
    #     And User sees text "Zaloguj się" on the header
    #     When User is filling in "login" field by "1"
    #     And User is filling in "password" field by "Sample123%"
    #     And User is clicking by id "login_button"
    #     Then User should see alert dialog with text "Nieprawidłowy numer GG lub hasło"

    
    # Scenario: Login in account by incorrect password
    #     Given User is on the login page
    #     And User sees text "Zaloguj się" on the header
    #     When User is filling in "login" field by "sampleMailop.pl"
    #     And User is filling in "password" field by "a"
    #     And User is clicking by id "login_button"
    #     Then User should see alert dialog with text "Nieprawidłowy numer GG lub hasło"


