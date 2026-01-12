import {defineConfig} from 'sanity'
import {structureTool} from 'sanity/structure'
import {visionTool} from '@sanity/vision'
import {schemaTypes} from './schemaTypes'

if (!process.env.SANITY_STUDIO_PROJECT_ID || !process.env.SANITY_STUDIO_DATASET) {
  throw new Error('Missing required environment variables: SANITY_STUDIO_PROJECT_ID and SANITY_STUDIO_DATASET must be set in .env.local')
}

export default defineConfig({
  name: 'default',
  title: 'PortfolioHM',

  projectId: process.env.SANITY_STUDIO_PROJECT_ID,
  dataset: process.env.SANITY_STUDIO_DATASET,

  plugins: [structureTool(), visionTool()],

  schema: {
    types: schemaTypes,
  },
})
