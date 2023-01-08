import { Result } from "true-myth";

type ReturnsPromise<T> = T extends (...args: any) => Promise<any>
  ? true
  : false;

type ReturnsPromiseFunction = (...args: any) => Promise<any>;

type A<T extends (...args: any) => Promise<any>> = Awaited<ReturnType<T>>;

/**
 * Provide Rust-like error handling in TS. Docs on Result types:
 * https://true-myth.js.org/
 * 
 * @example
 * ```ts
const result = await attempt(() => Promise.resolve(5));

if (result.isErr) {
  // Do something with the error
} else {
  // Do something with the result
  console.log(result.value);
}
 * ``` 
 * @param executor
 * @returns
 * @deprecated
 */
export const attempt = async <Err, T extends ReturnsPromiseFunction>(
  executor: T
): Promise<Result<A<T>, Err>> => {
  try {
    const result = await executor();
    return Result.ok(result);
  } catch (error) {
    return Result.err(error as Err);
  }
};

/**
 * Provide Rust-like error handling in TS. Docs on Result types:
 * https://true-myth.js.org/
 * 
 * @example
 * ```ts
const result = await wrap(() => Promise.resolve(5));

if (result.isErr) {
  // Do something with the error
} else {
  // Do something with the result
  console.log(result.value);
}
 * ``` 
 * @param executor
 * @returns
 */
export const wrap = async <T extends ReturnsPromiseFunction>(
  executor: T
): Promise<Result<A<T>, unknown>> => {
  try {
    const result = await executor();
    return Result.ok(result);
  } catch (error) {
    return Result.err(error as unknown);
  }
};

/**
 * Provide Rust-like error handling in TS. Docs on Result types:
 * https://true-myth.js.org/
 *
 *  @example
 * ```ts
const result = await attempt(() => Promise.resolve(5));

if (result.isErr) {
  // Do something with the error
} else {
  // Do something with the result
  console.log(result.value);
}
 * ``` 
 * @param executor
 * @returns
 * @deprecated
 */
export const attemptSync = <
  Err,
  T extends (...args: any) => any = (...args: any) => any
>(
  executor: T
): Result<ReturnType<T>, Err> => {
  try {
    const result = executor();
    return Result.ok(result);
  } catch (error) {
    return Result.err(error as Err);
  }
};
