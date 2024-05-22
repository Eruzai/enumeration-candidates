# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'

def find(id)
  @candidates.each { |candidate|
  if candidate[:id] == id
    return candidate
  end }
  nil
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    true
  else
    false
  end
end

def qualified_candidates(candidates)
  # Your code Here
end

# More methods will go below