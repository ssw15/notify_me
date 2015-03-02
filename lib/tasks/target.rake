namespace :target do
  desc "Updates each target with current content"
  task check_all: :environment do
    Target.find_each do |target|
      target.check_now
    end
  end
end
