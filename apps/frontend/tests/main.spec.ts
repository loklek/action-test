import { describe, test } from 'vitest'
import { mount } from '@vue/test-utils'
// import { setup, $fetch } from '@nuxt/test-utils/e2e'

import App from '../app.vue'

describe('My test', async () => {

  test('my test', async () => {
    // const app = mount(App)
    await new Promise((resolve, reject) => {
        setTimeout(() => resolve({}), 10000)
    })
  }, 20000)
})
