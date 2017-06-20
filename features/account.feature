Feature: Related with account
    Scenario: Opening login form
        Given User is on the landing page
        And User see the label "Kliknij przycisk +"
        When User click on "+"
        Then User see text field "Numer GG, e-mail lub telefon"
        And User see text field "Hasło"

