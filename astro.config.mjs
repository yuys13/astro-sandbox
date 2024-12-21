// @ts-check
import { defineConfig } from "astro/config";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";

// https://astro.build/config
export default defineConfig({
  site: "https://yuys13.github.io",
  base: "/astro-sandbox",
  integrations: [mdx(), sitemap()],
});
