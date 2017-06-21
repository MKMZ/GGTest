require 'calabash-android/calabash_steps'

def clear_touched_input cmd
  item = query(cmd)[0]
  if item['text'].is_a? String
    item['text'].length.times do |i|
      perform_action('keyboard_key_event', 67) # pressing backspace
    end
  end
end

def fill_in_text_field id, textValue
  cmd = "* id:'#{id}'"
  touch(cmd)
  input_field = query(cmd)[0]
  if !input_field.nil?
    clear_touched_input(cmd)
    keyboard_enter_text(textValue)
    touch(cmd)
    press_back_button
  else
    screenshot_and_raise "Input field: '#{id}' cannot be found"
  end  
end

def login_in_user login, password
  tap_mark('floating_action_button')
  fill_in_text_field("login", login)
  fill_in_text_field("password", password)
  touch("* id:'login_button'")
end

def open_additional_option optionName
  when_element_exists("* {contentDescription CONTAINS[c] 'More options'}", timeout: 10)
  touch("* {contentDescription CONTAINS[c] 'More options'}")
  when_element_exists("* {text CONTAINS[c] '#{optionName}'}", timeout: 10)
  touch("* {text CONTAINS[c] '#{optionName}'}")
end

def add_contact name, channel
  open_additional_option "Dodaj kontakt"
  fill_in_text_field("contact_name", name)
  fill_in_text_field("contact_channel", channel)
  touch("* {text CONTAINS[c] 'Dodaj'}")
  touch("* {contentDescription CONTAINS[c] 'Navigate up'}")
end

def remove_contact name
  touch("* id:'contact_list_item_show_name' text:'#{name}'")
  open_additional_option "Profil"
  open_additional_option "Usuń kontakt"
  touch("* {text CONTAINS[c] 'OK'}")
  touch("* {contentDescription CONTAINS[c] 'Navigate up'}")
end