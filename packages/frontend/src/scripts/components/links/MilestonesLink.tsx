import * as React from 'react'
import { useState, useEffect } from 'react'
import { NavLink } from 'react-router-dom'
// Commons
import { Product } from 'productboard-common'
// Managers
import { MilestoneManager } from '../../managers/milestone'
// Images
import * as MilestoneIcon from '/src/images/milestone.png'

export const MilestonesLink = (props: {product: Product}) => {

    // STATES

    const [count, setCount] = useState<number>()

    // EFFECTS

    // TODO: Find Milestones und unten count übergeben
    useEffect(() => { MilestoneManager.findMilestones(props.product.id).then(milestones => setCount(milestones.length)) }, [props])

    // RETURN

    return (
        <span>
            <NavLink to={`/products/${props.product.id}/milestones`}>
                <img src={MilestoneIcon}/>
                Milestones ({count != undefined ? count : '?'})
            </NavLink>
        </span>
    )

}