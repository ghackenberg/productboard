import { ForbiddenException, NotFoundException } from '@nestjs/common'
import { getCommentOrFail, getIssueOrFail, getMemberOrFail, getMilestoneOrFail, getProductOrFail, getVersionOrFail } from 'productboard-database'

export async function canReadUserOrFail(_userId: string, _otherUserId: string) {
    
}
export async function canWriteUserOrFail(_userId: string, _otherUserId: string) {
    
}

export async function canReadProductOrFail(userId: string, productId: string) {
    const product = await getProductOrFail({ id: productId, deleted: false }, NotFoundException)
    await getMemberOrFail({ userId, productId: product.id, deleted: false }, ForbiddenException)
}
export async function canWriteProductOrFail(userId: string, productId: string) {
    const product = await getProductOrFail({ id: productId, deleted: false }, NotFoundException)
    await getMemberOrFail({ userId, productId: product.id, deleted: false }, ForbiddenException)
}

export async function canReadMemberOrFail(userId: string, memberId: string) {
    const member = await getMemberOrFail({ id: memberId, deleted: false }, NotFoundException)
    await canReadProductOrFail(userId, member.productId)
}
export async function canWriteMemberOrFail(userId: string, memberId: string) {
    const member = await getMemberOrFail({ id: memberId, deleted: false }, NotFoundException)
    await canWriteProductOrFail(userId, member.productId)
}

export async function canReadVersionOrFail(userId: string, versionId: string) {
    const version = await getVersionOrFail({ id: versionId, deleted: false }, NotFoundException)
    await canReadProductOrFail(userId, version.productId)
}
export async function canWriteVersionOrFail(userId: string, versionId: string) {
    const version = await getVersionOrFail({ id: versionId, deleted: false }, NotFoundException)
    await canReadProductOrFail(userId, version.productId)
}

export async function canReadFileOrFail(_userId: string, _fileId: string) {

}
export async function canWriteFileOrFail(_userId: string, _fileId: string) {

}

export async function canReadIssueOrFail(userId: string, issueId: string) {
    const issue = await getIssueOrFail({ id: issueId, deleted: false }, NotFoundException)
    await canReadProductOrFail(userId, issue.productId)
}
export async function canWriteIssueOrFail(userId: string, issueId: string) {
    const issue = await getIssueOrFail({ id: issueId, deleted: false }, NotFoundException)
    await canReadProductOrFail(userId, issue.productId)
}

export async function canReadCommentOrFail(userId: string, commentId: string) {
    const comment = await getCommentOrFail({ id: commentId, deleted: false }, NotFoundException)
    await canReadIssueOrFail(userId, comment.issueId)
}
export async function canWriteCommentOrFail(userId: string, commentId: string) {
    const comment = await getCommentOrFail({ id: commentId, deleted: false }, NotFoundException)
    await canReadIssueOrFail(userId, comment.issueId)
}

export async function canReadMilestoneOrFail(userId: string, milestoneId: string) {
    const milestone = await getMilestoneOrFail({ id: milestoneId, deleted: false }, NotFoundException)
    await canReadProductOrFail(userId, milestone.productId)
}
export async function canWriteMilestoneOrFail(userId: string, milestoneId: string) {
    const milestone = await getMilestoneOrFail({ id: milestoneId, deleted: false }, NotFoundException)
    await canReadProductOrFail(userId, milestone.productId)
}