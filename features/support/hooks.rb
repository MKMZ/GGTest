require 'calabash-android/calabash_steps'

AfterStep do |scenario|
  begin
    tap_when_element_exists("* {contentDescription CONTAINS[c] 'Interstitial close button'}", timeout: 5)
  rescue Exception => e
    # puts "No ad overlay detected"
  end
end