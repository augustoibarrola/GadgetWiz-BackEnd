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


icons = [
    "https://win98icons.alexmeub.com/icons/png/write_yellow-1.png",
    "https://win98icons.alexmeub.com/icons/png/write_red.png",
    "https://win98icons.alexmeub.com/icons/png/windows_update_large-4.png",
    "https://win98icons.alexmeub.com/icons/png/template_empty-0.png",
    "https://win98icons.alexmeub.com/icons/png/standby_monitor_moon-3.png",
    "https://win98icons.alexmeub.com/icons/png/recycle_bin_file_directory.png",
    "https://win98icons.alexmeub.com/icons/png/directory_open_file_mydocs_2k-0.png"
]

icons.each do |icon| 
    Icon.create(image_url: icon)
end


Folder.create(name: "desktop", icon_image: "https://win98icons.alexmeub.com/icons/png/directory_open_file_mydocs_2k-0.png", content_type: "desktop")
Folder.create(name: "images", icon_image: "https://win98icons.alexmeub.com/icons/png/directory_open_file_mydocs_2k-0.png", content_type: "folder")

Folder.create(name: "test", icon_image:icons[3], content_type: "folder")
Folder.create(name: "games", icon_image: "https://win98icons.alexmeub.com/icons/png/directory_fonts_shortcut-4.png", content_type: "folder")
Gadget.create(user_id: "1", folder_id:"4", name: "snake", icon_image: "https://lh3.googleusercontent.com/0xcMLuiSn2BMOIvbJHpoCLOHsNmfw_EH1FQyxzu3v-jlFJDFI_T8UFHEAaeLVWpHl4M", content_type: 'snake-game', content: '')

Gadget.create(user_id: "1", folder_id:"1", name: "paint", icon_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS8ykBRUISod7uwIkiIlLIgdlatdGa9LG8Stw&usqp=CAU", content_type: 'paint', content: '')

Gadget.create(user_id: "1", folder_id:"1", name: "test-text", icon_image: icons[4], content_type: 'test', content: 'This is a test')
Gadget.create(user_id: "1", folder_id:"1", name: "test-img", icon_image: 'https://www.pinclipart.com/picdir/big/324-3243882_mtvmusic-music-mtv-80s-aesthetic-aesthetics-tumblr-90s.png', content_type: 'image', content: 'https://www.pinclipart.com/picdir/big/324-3243882_mtvmusic-music-mtv-80s-aesthetic-aesthetics-tumblr-90s.png')

Gadget.create(user_id: "1", folder_id:"2", name: "text-bro", icon_image: icons[0], content_type: 'text', content: 'This is a test')
Gadget.create(user_id: "1", folder_id:"2", name: "img-bro", icon_image: icons[6], content_type: 'image', content: icons[7])

Gadget.create(user_id: "1", folder_id:"2",name: "test-bro", icon_image: 'https://www.pinclipart.com/picdir/big/324-3243882_mtvmusic-music-mtv-80s-aesthetic-aesthetics-tumblr-90s.png', content_type: 'image', content: 'https://www.pinclipart.com/picdir/big/324-3243882_mtvmusic-music-mtv-80s-aesthetic-aesthetics-tumblr-90s.png')
BaseGadget.create(name: "myDiary", content_type: "base-diary", content: " ", icon_image: "https://win98icons.alexmeub.com/icons/png/write_red.png")
BaseGadget.create(name: "E-mail", content_type: "base-email", content: " ", icon_image: "https://win98icons.alexmeub.com/icons/png/mailbox_world-0.png")
