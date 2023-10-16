import NProgress from 'nprogress'

export default defineNuxtPlugin(() => {
  const router = useRouter()

  router.beforeEach((to, from, next) => {
    NProgress.start()

    next()
  })

  router.afterEach(() => {
    NProgress.done()
  })
})
