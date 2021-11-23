import * as React from 'react'

export interface Column <T,> {
    class?: string
    label: React.ReactNode
    content: (item: T) => React.ReactNode
}

export const Table = <T,> (props: {columns: Column<T>[], items: T[]}) => {

    return (
        <table>
            <thead>
                <tr>
                    {props.columns.map((column, index) =>
                        <th key={index} className={column.class}>{column.label}</th>
                    )}
                </tr>
            </thead>
            <tbody>
                {props.items.map((item, index) =>
                    <tr key={index}>
                        {props.columns.map((column, index) =>
                            <td key={index} className={column.class}>{column.content(item)}</td>
                        )}
                    </tr>
                )}
                {props.items.length == 0 && (
                    <tr>
                        <td colSpan={props.columns.length}>
                            <em>Empty</em>
                        </td>
                    </tr>
                )}
            </tbody>
        </table>
    )
    
}