RECLAIM_TYPE_HORIZONTAL = 1
RECLAIM_TYPE_VERTICAL = 2
RECLAIM_TYPE_DIAGONAL = 3

RECLAIM_TYPES = {
    RECLAIM_TYPE_HORIZONTAL: {
            'title': 'Горизонтальный рекламный блок',
            'count': 1,
    },
    RECLAIM_TYPE_VERTICAL: {
            'title': 'Вертикальный рекламный блок',
            'count': 3
    },
    RECLAIM_TYPE_DIAGONAL: {
            'title': 'Диагональный рекламный блок',
            'count': 2
    },
}
CHOICES_RECLAIM_TYPES = [(k, v['title']) for k, v in RECLAIM_TYPES.items()]
