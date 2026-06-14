declare module "@p-stream/providers" {
  export type Stream = any;
  export type RunOutput = any;
  export type ScrapeMedia = any;
  export type FullScraperEvents = any;
  export type MetaOutput = any;
  export type ProviderControls = any;
  export type Qualities = any;
  export type EmbedOutput = any;
  export type SourcererOutput = any;

  export class NotFoundError extends Error {}

  export type Fetcher = (...args: any[]) => Promise<any>;

  export function makeStandardFetcher(...args: any[]): any;
  export function makeSimpleProxyFetcher(...args: any[]): any;
  export function setM3U8ProxyUrl(...args: any[]): void;
  export function makeProviders(...args: any[]): any;
  export const targets: any;
  export function labelToLanguageCode(s: string): string;

  const _default: any;
  export default _default;
}
