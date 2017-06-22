require 'calabash-android/calabash_steps'


Given(/^User is on the landing page$/) do
  wait_for_element_exists("* id:'floating_action_button'", timeout: 10)
end

When(/^User is clicking on item of id "([^"]*)"$/) do |arg1|
  tap_mark(arg1)
end

When(/^User is clicking on "([^"]*)"$/) do |arg1|
  touch("* {text CONTAINS[c] '#{arg1}'}")
end

When(/^User is clicking by id "([^"]*)"$/) do |arg1|
  touch("* id:'#{arg1}'")
end

Then(/^User should see text field "([^"]*)"$/) do |arg1|
  wait_for_element_exists("* id:'#{arg1}'", timeout: 10)
end

Given(/^User is on the login page$/) do
  tap_mark('floating_action_button')

end

Given(/^User see the label "([^"]*)"$/) do |arg1|
  wait_for_text(arg1, timeout: 10)
end

Given(/^User see text "([^"]*)"$/) do |arg1|
  wait_for_text(arg1, timeout: 10)
end

Then(/^User should see text "([^"]*)"$/) do |arg1|
  wait_for_text(arg1, timeout: 10)
end

Then(/^User should see (\d+) checkboxes$/) do |arg1|
  checkbox_count = query("* { id CONTAINS[c] 'checkbox'}").count
  if checkbox_count != arg1.to_i
    screenshot_and_raise "Incorrent number of checkboxes, User should sees #{arg1}, but there are #{checkbox_count}"
  end
end

Given(/^User sees text "([^"]*)" on the header$/) do |arg1|
  wait_for_element_exists("aa text:'#{arg1}'", timeout: 20)
end

When(/^User is filling in "([^"]*)" field by "([^"]*)"$/) do |arg1, arg2|
  fill_in_text_field(arg1, arg2)
end

When(/^User select (\d+) checkboxes$/) do |arg1|
  checkboxes = query("* { id CONTAINS[c] 'checkbox'}")
  counter = 0
  if checkboxes.count >= arg1.to_i
    checkboxes.each do |chbox|
      unless chbox["checked"] && counter < arg1
        chbox_id = chbox["id"]
        touch("* id:'#{chbox_id}'")
        counter += 1
      end
    end
  else
    screenshot_and_raise "Incorrent number of checkboxes, User should sees #{arg1} or more, but there are #{checkboxes.count}"
  end
end

Given(/^User is on the new account page$/) do
  tap_mark('floating_action_button')
  touch("* text:'Utwórz nowe konto'")
end

Then(/^User should see text  "([^"]*)"$/) do |arg1|
  wait_for_text(arg1, timeout: 10)
end

Then(/^User should see account page$/) do
  wait_for_element_exists("ContactView", timeout: 20)
  wait_for_element_exists("* id:'contact_list_item_status'", timeout: 10)
end

Then(/^User should see alert dialog with text "([^"]*)"$/) do |arg1|
  wait_for_element_exists("Space", timeout: 10)
  wait_for_element_exists("* text:'#{arg1}'", timeout: 10)
end

# Conversations

Given(/^User is logged in as "([^"]*)" with password "([^"]*)"$/) do |arg1, arg2|
  login_in_user(arg1, arg2)
  wait_for_element_exists("ContactView", timeout: 10)
end

Given(/^User sees list of contacts$/) do
  wait_for_element_exists("* id:'contact_list_item_status'", timeout: 10)
  wait_for_element_exists("ContactView", timeout: 10)
end

Given(/^User has a contact "([^"]*)" with GG number "([^"]*)"$/) do |arg1, arg2|
  unless element_exists("* id:'contact_list_item_show_name' text:'#{arg1}'")
    add_contact(arg1, arg2) 
  end
end

Given(/^User does not have a contact "([^"]*)" with GG number "([^"]*)"$/) do |arg1, arg2|
  if element_exists("* id:'contact_list_item_show_name' text:'#{arg1}'")
    remove_contact(arg1) 
  end
end

Given(/^User is on new contact form$/) do
  unless element_exists("* id:'contact_name'") && element_exists("* id:'contact_channel'")
    open_additional_option "Dodaj kontakt"
    wait_for_element_exists("* id:'contact_name'", timeout: 10)
    wait_for_element_exists("* id:'contact_channel'", timeout: 10)
  end
end

When(/^User navigates up$/) do
  touch("* {contentDescription CONTAINS[c] 'Navigate up'}")
end

Then(/^User should not have contact "([^"]*)"$/) do |arg1|
  wait_for_elements_do_not_exist("* id:'contact_list_item_show_name' text:'#{arg1}'", timeout: 10)
end

When(/^User opens "([^"]*)" menu$/) do |arg1|
  touch("* {contentDescription CONTAINS[c] '#{arg1}'}")
end

When(/^User click on a contact "([^"]*)"$/) do |arg1|
  touch("* id:'contact_list_item_show_name' text:'#{arg1}'")
end

Then(/^User has entered conversation with "([^"]*)"$/) do |arg1|
  wait_for_element_exists("ChatInputAreaView", timeout: 10)
  wait_for_element_exists("MessageListView", timeout: 10)  
end

Given(/^User entered conversation with "([^"]*)"$/) do |arg1|
  touch("* id:'contact_list_item_show_name' text:'#{arg1}'")
  wait_for_element_exists("ChatInputAreaView", timeout: 10)
  wait_for_element_exists("MessageListView", timeout: 10)
end

When(/^User entered text of message "([^"]*)"$/) do |arg1|
  perform_action('keyboard_enter_text', arg1)
  perform_action('keyboard_key_event', 66) # pressing enter
end

Then(/^User see his message "([^"]*)"$/) do |arg1|
  wait_for_element_exists("AnimatedTextView text:'#{arg1}'", timeout: 10)
end

#Visibility:

When(/^User selects "([^"]*)" status$/) do |status|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^User's status should be set to "([^"]*)"$/) do |status|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^User opens user panel$/) do
    wait_for_element_exists("* contentDescription:'Otwórz panel'", timeout: 10)
    touch("* {contentDescription CONTAINS[c] '#{"Otwórz panel"}'}")
end

#Archive:

Given(/^User sends a message "([^"]*)" to "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^User goes to archive$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^User should see a "([^"]*)" message in "([^"]*)" conversation$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^User sends message "([^"]*)" to "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

And (/^User disables message archiving option$/) do
  pending
end

And (/^User presses back button$/) do
  press_back_button
end

Then (/^User should not see any new messages in archive$/) do
  pending
end