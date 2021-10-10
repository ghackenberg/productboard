import { Injectable } from '@nestjs/common'
import * as shortid from 'shortid'
import { User, UserData, UserREST } from 'fhooe-audit-platform-common'

@Injectable()
export class UserService implements UserREST {
    private users: User[] = []

    constructor() {
        for (var i = 0; i < Math.random() * 20; i++) {
            this.users.push({
                id: shortid(),
                name : shortid(),
                email: shortid()
            })
        }

        // default user
        this.users.push({   id: 'default',
                            name: 'test',
                            email: '1234.1234@1234.com'})
    }

    async findUsers(quick?: string, name?: string, email?: string) : Promise<User[]> {
        
        const results: User[] = []

        quick = quick ? quick.toLowerCase() : undefined
        name = name ? name.toLowerCase() : undefined
        email = email ? email.toLowerCase() : undefined

        for (var index = 0; index < this.users.length; index++) {

            const user = this.users[index]

            if (quick) {
                const conditionA = user.name.toLowerCase().includes(quick)
                const conditionB = user.email.toLowerCase().includes(quick)

                if (!(conditionA || conditionB)) {
                    continue
                }
            }
            if (name && !user.name.toLowerCase().includes(name)) {
                continue
            }
            if (email && !user.email.toLowerCase().includes(email)) {
                continue
            }
            results.push(user)
        }

        return results
    }

    async getUser(id: string): Promise<User> {
        for (var j = 0; j < this.users.length; j++) {
            if (this.users[j].id == id)
                return this.users[j]
        }
        return null
    }

    async addUser(data: UserData) {
        const user = { id: shortid(), ...data }

        this.users.push(user)
        
        return user
    }

    async updateUser(user: User) {
        
        for (var i = 0; i < this.users.length; i++) {
            if (this.users[i].id == user.id &&
                this.users[i].name == user.name &&
                this.users[i].email == user.email) {
                
                this.users = this.users.filter(users => users.id != user.id);
            }
            else if (this.users[i].id == user.id && (
                    this.users[i].name == user.name ||
                    this.users[i].email == user.email)) {

                this.users.splice(i,1,user)
            }
        }

        return user
    }
}