import * as React from 'react'
import { Fragment } from 'react'
import { NavLink } from 'react-router-dom'
// Commons
import { User } from 'fhooe-audit-platform-common'
// Links
import { UsersLink } from './UsersLink'

export const UserLink = (props: {user?: User}) => {
    return (
        <Fragment>
            <UsersLink/>
            { props.user ? (
                <span>
                    <NavLink to={`/users/${props.user.id}`}>{props.user.name}</NavLink>
                </span>
            ) : (
                <span>
                    <NavLink to={`/users/new`}>New user</NavLink>
                </span>
            )}
        </Fragment>  
    )
}