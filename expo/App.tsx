import { QueryClient } from "@tanstack/react-query";
import { httpBatchLink } from "@trpc/client";
import { StatusBar } from "expo-status-bar";
import { useState } from "react";
import { SafeAreaProvider } from "react-native-safe-area-context";

import useCachedResources from "./hooks/useCachedResources";
import useColorScheme from "./hooks/useColorScheme";
import { Navigation } from "@navigation";
import { trpc } from "./util/trpc";
import superjson from "superjson";

import { TailwindProvider } from "tailwind-rn";
import Environment from "./constants/Environment";
import utilities from "./tailwind.json";

export default function App() {
  const isLoadingComplete = useCachedResources();
  const colorScheme = useColorScheme();

  const [queryClient] = useState(() => new QueryClient());
  const [trpcClient] = useState(() =>
    trpc.createClient({
      links: [
        httpBatchLink({
          url: Environment.trpcEndpoint,
          // optional
          headers() {
            return {};
          },
        }),
      ],
      transformer: superjson,
    })
  );

  if (!isLoadingComplete) {
    return null;
  } else {
    return (
      <SafeAreaProvider>
        <Navigation />
        <StatusBar />
      </SafeAreaProvider>
    );
  }
}
