import {defineCliConfig} from 'sanity/cli'

if (!process.env.SANITY_PROJECT_ID || !process.env.SANITY_DATASET) {
  throw new Error('Missing required environment variables: SANITY_PROJECT_ID and SANITY_DATASET must be set in .env.local')
}

export default defineCliConfig({
  api: {
    projectId: process.env.SANITY_PROJECT_ID,
    dataset: process.env.SANITY_DATASET
  },
  deployment: {
    /**
     * Enable auto-updates for studios.
     * Learn more at https://www.sanity.io/docs/cli#auto-updates
     */
    autoUpdates: true,
  }
})
