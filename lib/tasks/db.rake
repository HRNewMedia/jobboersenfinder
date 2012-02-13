namespace :db do


  task migrate_logos: :environment do
    Platform.all.each do |platform|
      unless platform.logo_file_name.blank?
        platform.update_attributes logo: File.open("/Users/mattbeedle/development/jobboersen_finder/public/assets/platforms/#{platform.id}/original.#{platform.logo_file_name.split('.').last.downcase}")
      end
    end
  end
end
