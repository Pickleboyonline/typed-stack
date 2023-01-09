import { builder } from "../builder";
import { v4 } from "uuid";

const ArticleType = builder
  .objectRef<{ articleID: string }>("Article")
  .implement({
    fields: (t) => ({
      id: t.exposeID("articleID"),
    }),
  });

builder.queryFields((t) => ({
  article: t.field({
    type: ArticleType,
    args: {
      articleID: t.arg.string({ required: true }),
    },
    resolve: async (_, args) => {
      return { articleID: args.articleID };
    },
  }),
  articles: t.field({
    type: [ArticleType],
    resolve: () =>
      Array(10)
        .fill(0)
        .map(() => ({ articleID: v4() })),
  }),
}));

builder.mutationFields((t) => ({
  createArticle: t.field({
    type: ArticleType,
    args: {
      title: t.arg.string({ required: true }),
      url: t.arg.string({ required: true }),
    },
    resolve: (_, args) => ({ articleID: v4() }),
  }),
}));
