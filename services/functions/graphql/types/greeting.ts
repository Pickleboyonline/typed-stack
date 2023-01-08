import { builder } from "../builder";

const GreetingType = builder
  .objectRef<{ message: string }>("Greeting")
  .implement({
    fields: (t) => ({
      message: t.exposeID("message"),
    }),
  });

builder.queryFields((t) => ({
  greetMe: t.field({
    type: GreetingType,
    args: {
      name: t.arg.string({ required: true }),
    },
    resolve: (_, args) => ({ message: `Hello ${args.name}` }),
  }),
}));

// builder.mutationFields((t) => ({
//   createArticle: t.field({
//     type: GreetingType,
//     args: {
//       title: t.arg.string({ required: true }),
//       url: t.arg.string({ required: true }),
//     },
//     resolve: (_, args) => ({ articleID: v4() }),
//   }),
// }));
