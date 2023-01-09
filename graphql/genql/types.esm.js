export default {
    "scalars": [
        1,
        4,
        6
    ],
    "types": {
        "Article": {
            "id": [
                1
            ],
            "__typename": [
                4
            ]
        },
        "ID": {},
        "Greeting": {
            "message": [
                1
            ],
            "__typename": [
                4
            ]
        },
        "Mutation": {
            "createArticle": [
                0,
                {
                    "title": [
                        4,
                        "String!"
                    ],
                    "url": [
                        4,
                        "String!"
                    ]
                }
            ],
            "__typename": [
                4
            ]
        },
        "String": {},
        "Query": {
            "article": [
                0,
                {
                    "articleID": [
                        4,
                        "String!"
                    ]
                }
            ],
            "articles": [
                0
            ],
            "greetMe": [
                2,
                {
                    "name": [
                        4,
                        "String!"
                    ]
                }
            ],
            "__typename": [
                4
            ]
        },
        "Boolean": {}
    }
}