# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here
# test = {
#   id: 5,
#   years_of_experience: 4,
#   github_points: 100,
#   languages: ['C', 'Ruby', 'Python', 'Clojure'],
#   date_applied: 16.days.ago.to_date,
#   age: 18
# }
# pp experienced?(test)
# pp find(15)
# pp hundred_github_points(test)
# pp legal_age(test)
# pp know_ruby_or_python(test)
# pp applied_recently(test)
# pp qualified_candidates(@candidates)
# pp ordered_by_qualifications(@candidates)

pp @candidates