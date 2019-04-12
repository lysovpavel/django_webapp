PAGE_TYPE_HOME = 1

HOME_PAGES = [PAGE_TYPE_HOME]

PAGE_TYPES = {
    PAGE_TYPE_HOME: {
        'title': 'Главная',
        'template': 'pages/home.html',
        'context': 'garpix_page.contexts.default.context'
    },
}

CHOICES_PAGE_TYPES = [(k, v['title']) for k, v in PAGE_TYPES.items()]

CHOICES_COMPONENT_POSITION = (
    ('--', '--'),
)

CHOICES_COMPONENT_TEMPLATE = (
    ('--', '--'),
)
