MENU_TYPE_DISABLED = 'disabled'
MENU_TYPE_MAIN = 'main_menu'


MENU_TYPES = {
    MENU_TYPE_DISABLED: {
        'title': 'Not shown',
        'class': ''
    },
    MENU_TYPE_MAIN: {
        'title': 'Main menu',
        'class': ''
    },
}


CHOICE_MENU_TYPES = [(k, v['title']) for k, v in MENU_TYPES.items()]
