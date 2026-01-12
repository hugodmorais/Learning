import {defineConfig} from 'sanity'
import {structureTool} from 'sanity/structure'
import {visionTool} from '@sanity/vision'
import {schemaTypes} from './schemaTypes'
import 'dotenv/config'

if (!process.env.SANITY_PROJECT_ID || !process.env.SANITY_DATASET) {
  throw new Error('Missing required environment variables: SANITY_PROJECT_ID and SANITY_DATASET must be set in .env.local')
}

export default defineConfig({
  name: 'default',
  title: 'PortfolioHM',

  projectId: process.env.SANITY_PROJECT_ID,
  dataset: process.env.SANITY_DATASET,

  plugins: [structureTool(), visionTool()],

  schema: {
    types: schemaTypes,
  },
})
