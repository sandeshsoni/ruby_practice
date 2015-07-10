# A good person introduced me to meta programming.
# I did not plan to learn meta programming at this stage.
# As i am introduced to it, lets begin.

mood_time = ['morning', 'evening']

mood_time.each do |mood|
	define_method('greet_'+mood) { puts "good #{ mood } " }
end
# define_method creates methods greet_morning and greet_evening



greet_morning
greet_evening
