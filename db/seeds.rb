# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Mar', password: 'peanuts', email: 'mar@peanuts.com')
User.create(username: 'Augusto', password: 'almonds', email: 'anon@yahoo.com')
User.create(username: 'Rianna', password: 'cashews', email: 'rianna@yahoo.com')
User.create(username: 'Rihanna', password: 'hazelnuts', email: 'badgirl@riri.com')

Journal.create(user: User.all.sample, title: "Great Day", content: "Today was.... perfectly splendid.")
Journal.create(user: User.all.sample, title: "So-So Day", content: "Today was so-so, I guess.")
Journal.create(user: User.all.sample, title: "A Day", content: "Today was a day.")
Journal.create(user: User.all.sample, title: "Another Great Day", content: "Full circle!")

# BaseGadget.create(user_id: User.all.sample, name: "myDiary", icon_image: "", content_type: "Text", content: "")
# BaseGadget.create(user_id: User.all.sample, name: "E-Mail", icon_image: "", content_type: "Text", content: "")
# BaseGadget.create(user_id: User.all.sample, name: "Images", icon_image: "https://win98icons.alexmeub.com/icons/png/directory_open_cool-3.png", content_type: "Image", content: "")


icons = [
    'https://win98icons.alexmeub.com/icons/png/write_yellow-1.png',
    'https://win98icons.alexmeub.com/icons/png/write_red.png',
    'https://win98icons.alexmeub.com/icons/png/windows_update_large-4.png',
    'https://win98icons.alexmeub.com/icons/png/template_empty-0.png',
    'https://win98icons.alexmeub.com/icons/png/standby_monitor_moon-3.png',
    'https://win98icons.alexmeub.com/icons/png/recycle_bin_file_directory.png'
]