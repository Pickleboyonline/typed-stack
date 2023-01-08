// utils/trpc.ts
import { createTRPCReact } from '@trpc/react-query';
import type { AppRouter } from '../../services/functions/trpc/routers/_app';

export const trpc = createTRPCReact<AppRouter>();