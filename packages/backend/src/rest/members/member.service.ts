import { Injectable } from '@nestjs/common'
import * as shortid from 'shortid'
import { Member, MemberAddData, MemberUpdateData, MemberREST } from 'productboard-common'
import { MemberEntity, MemberRepository, ProductRepository, UserRepository } from 'productboard-database'
import { FindOptionsWhere } from 'typeorm'

@Injectable()
export class MemberService implements MemberREST {
    async findMembers(productId: string, userId?: string): Promise<Member[]> {
        const where: FindOptionsWhere<MemberEntity>[] = []
        if (productId) 
            where.push({ productId })
        if (userId)
            where.push({ userId })
        if (true)
            where.push({ deleted: false})
        const result: Member[] = []
        for (const member of await MemberRepository.findBy(where))
            result.push(this.convert(member))
        return result
    }

    async addMember(data: MemberAddData): Promise<Member> {
        const product = await ProductRepository.findOneByOrFail({ id: data.productId })
        const user = await UserRepository.findOneByOrFail({ id: data.userId })
        const member = await MemberRepository.save({ id: shortid(), deleted: false, product, user })
        return this.convert(member)
    }

    async getMember(id: string): Promise<Member> {
       const member = await MemberRepository.findOneByOrFail({ id })
        return this.convert(member)
    }

    async updateMember(id: string, _data: MemberUpdateData): Promise<Member> {
        const member = await MemberRepository.findOneByOrFail({ id })
        await MemberRepository.save(member)
        return this.convert(member)
    }
    
    async deleteMember(id: string): Promise<Member> {
        const member = await MemberRepository.findOneByOrFail({ id })
        member.deleted = true
        await MemberRepository.save(member)
        return this.convert(member)
    }

    private convert(member: MemberEntity) {
        return { id: member.id, deleted: member.deleted, productId: member.productId, userId: member.userId }
    }
}