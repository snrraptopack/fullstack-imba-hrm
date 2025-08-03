import { defineConfig } from 'vite'
import { imba } from 'vite-plugin-imba'

export default defineConfig({
  plugins: [
    imba()
  ],
  ssr: {
    noExternal: ['imba']
  }
})
