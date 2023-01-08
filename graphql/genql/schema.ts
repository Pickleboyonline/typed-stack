import {FieldsSelection,Observable} from '@genql/runtime'

export type Scalars = {
    ID: string,
    String: string,
    Boolean: boolean,
}

export interface Article {
    id: Scalars['ID']
    __typename: 'Article'
}

export interface Greeting {
    message: Scalars['ID']
    __typename: 'Greeting'
}

export interface Mutation {
    createArticle: Article
    __typename: 'Mutation'
}

export interface Query {
    article: Article
    articles: Article[]
    greetMe: Greeting
    __typename: 'Query'
}

export interface ArticleRequest{
    id?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface GreetingRequest{
    message?: boolean | number
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface MutationRequest{
    createArticle?: [{title: Scalars['String'],url: Scalars['String']},ArticleRequest]
    __typename?: boolean | number
    __scalar?: boolean | number
}

export interface QueryRequest{
    article?: [{articleID: Scalars['String']},ArticleRequest]
    articles?: ArticleRequest
    greetMe?: [{name: Scalars['String']},GreetingRequest]
    __typename?: boolean | number
    __scalar?: boolean | number
}


const Article_possibleTypes: string[] = ['Article']
export const isArticle = (obj?: { __typename?: any } | null): obj is Article => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isArticle"')
  return Article_possibleTypes.includes(obj.__typename)
}



const Greeting_possibleTypes: string[] = ['Greeting']
export const isGreeting = (obj?: { __typename?: any } | null): obj is Greeting => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isGreeting"')
  return Greeting_possibleTypes.includes(obj.__typename)
}



const Mutation_possibleTypes: string[] = ['Mutation']
export const isMutation = (obj?: { __typename?: any } | null): obj is Mutation => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isMutation"')
  return Mutation_possibleTypes.includes(obj.__typename)
}



const Query_possibleTypes: string[] = ['Query']
export const isQuery = (obj?: { __typename?: any } | null): obj is Query => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isQuery"')
  return Query_possibleTypes.includes(obj.__typename)
}


export interface ArticlePromiseChain{
    id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Promise<Scalars['ID']>})
}

export interface ArticleObservableChain{
    id: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Observable<Scalars['ID']>})
}

export interface GreetingPromiseChain{
    message: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Promise<Scalars['ID']>})
}

export interface GreetingObservableChain{
    message: ({get: (request?: boolean|number, defaultValue?: Scalars['ID']) => Observable<Scalars['ID']>})
}

export interface MutationPromiseChain{
    createArticle: ((args: {title: Scalars['String'],url: Scalars['String']}) => ArticlePromiseChain & {get: <R extends ArticleRequest>(request: R, defaultValue?: FieldsSelection<Article, R>) => Promise<FieldsSelection<Article, R>>})
}

export interface MutationObservableChain{
    createArticle: ((args: {title: Scalars['String'],url: Scalars['String']}) => ArticleObservableChain & {get: <R extends ArticleRequest>(request: R, defaultValue?: FieldsSelection<Article, R>) => Observable<FieldsSelection<Article, R>>})
}

export interface QueryPromiseChain{
    article: ((args: {articleID: Scalars['String']}) => ArticlePromiseChain & {get: <R extends ArticleRequest>(request: R, defaultValue?: FieldsSelection<Article, R>) => Promise<FieldsSelection<Article, R>>}),
    articles: ({get: <R extends ArticleRequest>(request: R, defaultValue?: FieldsSelection<Article, R>[]) => Promise<FieldsSelection<Article, R>[]>}),
    greetMe: ((args: {name: Scalars['String']}) => GreetingPromiseChain & {get: <R extends GreetingRequest>(request: R, defaultValue?: FieldsSelection<Greeting, R>) => Promise<FieldsSelection<Greeting, R>>})
}

export interface QueryObservableChain{
    article: ((args: {articleID: Scalars['String']}) => ArticleObservableChain & {get: <R extends ArticleRequest>(request: R, defaultValue?: FieldsSelection<Article, R>) => Observable<FieldsSelection<Article, R>>}),
    articles: ({get: <R extends ArticleRequest>(request: R, defaultValue?: FieldsSelection<Article, R>[]) => Observable<FieldsSelection<Article, R>[]>}),
    greetMe: ((args: {name: Scalars['String']}) => GreetingObservableChain & {get: <R extends GreetingRequest>(request: R, defaultValue?: FieldsSelection<Greeting, R>) => Observable<FieldsSelection<Greeting, R>>})
}