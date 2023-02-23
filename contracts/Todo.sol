// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Todo {
    struct Task {
        uint id;
        uint date;
        string content;
        string author;
        bool done;
    }
    Task[] tasks;
    function createTask(string memory _content, string memory _author) public {
        tasks.push(Task(
            tasks.length,
            block.timestamp,
            _content,
            _author,
            false
        ));
    }
    function getTask(uint _id) public view 
    returns(
        uint,
        uint,
        string memory,
        string memory,
        bool
    ) {
        require(_id < tasks.length, "Index out of range");
        return(
            _id,
            tasks[_id].date,
            tasks[_id].content,
            tasks[_id].author,
            tasks[_id].done
        );
    }
    function getTasks() public view returns (Task[] memory) {
        return(tasks);
    }
}
