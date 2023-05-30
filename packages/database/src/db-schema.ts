import type { ColumnType } from "kysely";
export type Generated<T> = T extends ColumnType<infer S, infer I, infer U>
  ? ColumnType<S, I | undefined, U>
  : ColumnType<T, T | undefined, T>;
export type Timestamp = ColumnType<Date, Date | string, Date | string>;

export type Post = {
    id: Generated<string>;
    createdAt: Generated<Timestamp>;
    updatedAt: Timestamp;
    title: string;
    content: string | null;
    published: Generated<boolean>;
    authorId: string;
};
export type Profile = {
    id: Generated<string>;
    bio: string | null;
    userId: string;
};
export type User = {
    id: Generated<string>;
    email: string;
    name: string | null;
};
export type DB = {
    Post: Post;
    Profile: Profile;
    User: User;
};
