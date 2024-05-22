# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'

def find(id)
  @candidates.each { |candidate|
    if candidate[:id] == id
      return candidate
    end
  }
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
  qualified = []
  candidates.each { |candidate|
    if experienced?(candidate) && hundred_github_points(candidate) && know_ruby_or_python(candidate) && applied_recently(candidate) && legal_age(candidate)
      qualified << candidate
    end
  }
  qualified
end

def ordered_by_qualifications(candidates)
  candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
end

# More methods will go below
def hundred_github_points(candidate)
  if candidate[:github_points] >= 100
    true
  else
    false
  end
end

def know_ruby_or_python(candidate)
  if candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")
    true
  else
    false
  end
end

def applied_recently(candidate)
  if candidate[:date_applied] >= 15.days.ago.to_date
    true
  else
    false
  end
end

def legal_age(candidate)
  if candidate[:age] >= 18
    true
  else
    false
  end
end