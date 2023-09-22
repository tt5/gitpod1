import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

const user = await prisma.user.create({
  data: {
    email: `user${Math.random()}@prisma.io`,
  },
})
console.log(user)
