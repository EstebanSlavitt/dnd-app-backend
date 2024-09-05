Character.create([
  { name: "Gimli", class_name: "Fighter", race: "Dwarf", level: 4, background: "Soldier", alignment: "Lawful Good" },
  { name: "Legolas", class_name: "Ranger", race: "Elf", level: 5, background: "Noble", alignment: "Chaotic Good" },
  { name: "Gandalf", class_name: "Wizard", race: "Maia", level: 20, background: "Sage", alignment: "Neutral Good" },
  { name: "Frodo", class_name: "Rogue", race: "Hobbit", level: 3, background: "Hermit", alignment: "Neutral Good" },
])

require "rest-client"
require "json"

puts "Fetching classes from D&D 5e API..."
classes_data = DndApiService.get_classes

classes_data["results"].each do |class_data|
  Character.create(
    name: "Random Character",
    class_name: class_data["name"],
    race: "Human",  # You can later fetch races similarly
    level: rand(1..20),
    background: "Adventurer",
    alignment: ["Lawful Good", "Neutral", "Chaotic Evil"].sample,
  )
end

puts "Seeding complete!"
