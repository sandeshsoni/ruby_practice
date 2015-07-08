module Utility
  extend self

  def greet_morning
    puts 'good morning'
  end

  def greet_evening
    print_good_evening
  end

  private
  def print_good_evening
    puts 'good evening'
  end

end
Utility.greet_morning
Utility.greet_evening
# Utility.print_good_evening
# private method `print_good_evening' called for Utility:Module (NoMethodError) 
