namespace :scorer do
  desc "Capture each childs score for the day and reset clip"
  task capture: :environment do
    Child.score_and_reset
  end

end
