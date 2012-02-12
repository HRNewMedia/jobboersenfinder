namespace :db do

  task migrate_data: :environment do

    # Platforms

    columns = [
      nil, 'name', 'description', 'url', 'activity', 'rank', 'is_specialized',
      'is_filterable', 'is_published', nil, nil, nil, nil, nil, nil, nil,
      'supporter_id', 'coverage'
    ]
    sql = 'SELECT * FROM platforms'
    resultset = ActiveRecord::Base.connection.execute(sql)
    resultset.each do |row|
      platform = Platform.new
      row.each_with_index do |value, index|
        platform.send("#{columns[index]}=", value) unless columns[index].nil?
      end
      platform.logo =
        File.open("/Users/mattbeedle/development/jobboersen_finder/public/assets/platforms/#{row.first}/original")
      platform.save!
    end
  end
end
