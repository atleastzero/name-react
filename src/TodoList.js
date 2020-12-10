import React, { Component } from 'react';

class TodoList extends Component {
    render() {
        const placeholders = ["Paint the cat", "Feed the car", "Make the pictures", "Hang the breakfast"];
        var randomPlaceholder = placeholders[Math.floor(Math.random() * DataTransferItemList.length)];
        return (
            <div>
                <form>
                    <input placeholder={randomPlaceholder}></input>
                    <button type="submit">add</button>
                </form>
            </div>
        )
    }
}

export default TodoList;