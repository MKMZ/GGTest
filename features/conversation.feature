Feature: Conversations

  # Scenario: Opening new contact form
  #   Given User is logged in as "63034445" with password "Zuo666"
  #   And User sees list of contacts
  #   And User does not have a contact "Kumpel" with GG number "8012682"
  #   When User opens "More options" menu
  #   And User is clicking on "Dodaj kontakt"
  #   Then User should see text "Dodaj"
  #   And User should see text "Anuluj"
  #   And User should see text field "contact_channel"
  #   And User should see text field "contact_name"

  Scenario: Validation of new contact form
    Given User is logged in as "63034445" with password "Zuo666"
    And User is on new contact form
    When User is clicking on "Dodaj"
    Then User should see text "Wpisz numer GG, numer telefonu lub e-mail"  

  # Scenario: Adding new contact
  #   Given User is logged in as "63034445" with password "Zuo666"
  #   And User does not have a contact "Kumpel" with GG number "8012682"
  #   And User is on new contact form
  #   When User is filling in "contact_name" field by "Kumpel"
  #   And User is filling in "contact_channel" field by "8012682"
  #   And User is clicking on "Dodaj"
  #   Then User should see text "Wysłano zaproszenie"  

  # Scenario: Removing contact
  #   Given User is logged in as "63034445" with password "Zuo666"
  #   And User sees list of contacts
  #   And User has a contact "Kumpel" with GG number "8012682"
  #   When User opens "More options" menu
  #   And User is clicking on "Profil"
  #   And User opens "More options" menu
  #   And User is clicking on "Usuń kontakt"
  #   And User is clicking on "OK"
  #   And User navigates up
  #   Then User should not have contact "Kumpel"  

  #  Scenario: Starting up new conversation
  #   Given User is logged in as "63034445" with password "Zuo666"
  #   And User sees list of contacts
  #   And User has a contact "Kumpel" with GG number "8012682"
  #   When User click on a contact "Kumpel"
  #   Then User has entered conversation with "Kumpel"
  
  # Scenario: Sending a message
  #   Given User is logged in as "8012682" with password "password"
  #   And User has a contact "Kumpel" with GG number "8012682"
  #   And User entered conversation with "Kumpel"
  #   When User entered text "Cool message"
  #   Then User see his message "Cool message"
  
  