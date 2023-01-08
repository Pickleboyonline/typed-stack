export default {
    "scalars": [
        1,
        3,
        5
    ],
    "types": {
        "Article": {
            "id": [
                1
            ],
            "__typename": [
                3
            ]
        },
        "ID": {},
        "Mutation": {
            "createArticle": [
                0,
                {
                    "title": [
                        3,
                        "String!"
                    ],
                    "url": [
                        3,
                        "String!"
                    ]
                }
            ],
            "__typename": [
                3
            ]
        },
        "String": {},
        "Query": {
            "article": [
                0,
                {
                    "articleID": [
                        3,
                        "String!"
                    ]
                }
            ],
            "articles": [
                0
            ],
            "__typename": [
                3
            ]
        },
        "Boolean": {}
    }
}