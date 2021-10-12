import * as React from 'react'
// Commons
import { User } from 'fhooe-audit-platform-common'
// Clients
import { UserAPI } from '../../clients/rest'
// Inputs
import { TextInput } from '../inputs/TextInput'

export const UserSearch = (props: {change: (value: User[]) => void}) => {

    const [value, setValue] = React.useState<string>('')

    async function change(value: string) {
        props.change(await UserAPI.findUsers(value))
    }

    return (
        <form>
            <TextInput label="Quick search" placeholder="Type query" value={value} change={value => {setValue(value), change(value)}}/> 
        </form>
    )

}