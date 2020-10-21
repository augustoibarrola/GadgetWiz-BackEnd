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
Folder.create(name: "apps", icon_image: "https://win98icons.alexmeub.com/icons/png/directory_fonts_shortcut-4.png", content_type: "folder")
Folder.create(name: "Recycle Bin", icon_image: "https://win98icons.alexmeub.com/icons/png/conn_dialup_recbin_phone.png", content_type: "folder")

Gadget.create(user_id: "1", folder_id:"3", name: "snake", icon_image: "https://lh3.googleusercontent.com/0xcMLuiSn2BMOIvbJHpoCLOHsNmfw_EH1FQyxzu3v-jlFJDFI_T8UFHEAaeLVWpHl4M", content_type: 'snake-game', content: '')
Gadget.create(user_id: "1", folder_id:"3", name: "paint", icon_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS8ykBRUISod7uwIkiIlLIgdlatdGa9LG8Stw&usqp=CAU", content_type: 'paint', content: '')
Gadget.create(user_id: "1", folder_id:"1", name: "myDiary", content_type: "text", content: "Writing a diary is a good way to make sure your memories and experiences stay alive. It lets you keep track and reflect on your past and learn from your mistakes. It can also be tremendously therapeutic. Not only to record fun and adventurous moments, but also sad and scary times. It can be helpful to be able to document changes in your life.", icon_image: "https://win98icons.alexmeub.com/icons/png/write_red.png")
BaseGadget.create(name: "E-mail", content_type: "base-email", content: " ", icon_image: "https://win98icons.alexmeub.com/icons/png/mailbox_world-0.png")


Gadget.create(user_id: "1", folder_id:"2", name: "iconic.img", icon_image: 'https://i.pinimg.com/originals/7a/9a/88/7a9a8815da02a84039ea55d8f28faa9d.jpg', content_type: 'image', content: 'https://i.pinimg.com/originals/7a/9a/88/7a9a8815da02a84039ea55d8f28faa9d.jpg')
Gadget.create(user_id: "1", folder_id:"1", name: "mtv.img", icon_image: 'https://www.pinclipart.com/picdir/big/324-3243882_mtvmusic-music-mtv-80s-aesthetic-aesthetics-tumblr-90s.png', content_type: 'image', content: 'https://www.pinclipart.com/picdir/big/324-3243882_mtvmusic-music-mtv-80s-aesthetic-aesthetics-tumblr-90s.png')

Gadget.create(user_id: "1", folder_id:"2", name: "phone.img", icon_image: 'https://mondrian.mashable.com/lead-img-texting-onscreen-2000s.jpg', content_type: 'image', content: 'https://mondrian.mashable.com/lead-img-texting-onscreen-2000s.jpg')
Gadget.create(user_id: "1", folder_id:"2", name: "wooza.img", icon_image: 'https://wallpapercave.com/wp/wp5562536.jpg', content_type: 'image', content: 'https://wallpapercave.com/wp/wp5562536.jpg')
Gadget.create(user_id: "1", folder_id:"2", name: "matrix.img", icon_image: 'https://www.extremetech.com/wp-content/uploads/2011/11/matrix-code.jpg', content_type: 'image', content: 'https://www.extremetech.com/wp-content/uploads/2011/11/matrix-code.jpg')
Gadget.create(user_id: "1", folder_id:"2", name: "tubular.img", icon_image: 'https://wallpapercave.com/wp/wp5277521.jpg', content_type: 'image', content: 'https://wallpapercave.com/wp/wp5277521.jpg')


Gadget.create(user_id: "1", folder_id:"4", name: "garlic-beef.img", icon_image: 'https://jamiegeller.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY1NTI0ODQxNDQ5NDY0ODU5/ginger-and-garlic-beef-noodlesjpg.jpg', content_type: 'image', content: 'https://jamiegeller.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY1NTI0ODQxNDQ5NDY0ODU5/ginger-and-garlic-beef-noodlesjpg.jpg')
Gadget.create(user_id: "1", folder_id:"4", name: "jefree.img", icon_image: 'https://i.insider.com/5ca7bf3d92c886362c51acc6?width=750&format=jpeg&auto=webp', content_type: 'image', content: 'https://i.insider.com/5ca7bf3d92c886362c51acc6?width=750&format=jpeg&auto=webp')
