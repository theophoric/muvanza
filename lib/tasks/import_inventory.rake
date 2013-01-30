task :import_inventory => :environment do
  file = open("#{Rails.root}/public/csv/inventory_template.csv")
  CSV.parse(file.read, {col_sep: ';'}) do |row|
    ItemTemplate.create(room: row[0], item_group: row[1], name: row[2], volume: row[3])
  end

end