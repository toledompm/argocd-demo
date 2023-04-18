const fastify = require('fastify')({ logger: true })

fastify.get('/', async () => {
  return { hello: 'world' }
})

const start = async () => {
  try {
    await fastify.listen({ host: '0.0.0.0', port: 3000 })
  } catch (err) {
    fastify.log.error(err)
    process.exit(1)
  }
}

start()
