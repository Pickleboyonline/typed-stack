import create from "zustand";

export type CognitoUser = {
  sub: string;
  email: string;
};

type AuthStore = {
  user: null | CognitoUser;
};

export const useAuthStore = create<AuthStore>(() => ({
  user: null,
}));
