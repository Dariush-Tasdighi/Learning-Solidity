// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// struct Task {
//     string content;
//     bool isCompleted;
// }

contract TodoContract {
    struct Task {
        string content;
        bool isCompleted;
    }

    // Task[] public tasks;
    // Task[] tasks;
    Task[] private tasks;

    // public -> external
    function getTasks() external view returns (Task[] memory) {
        // return (tasks);

        return tasks;
    }

    function getTaskCount() external view returns (uint256) {
        // return tasks.length;

        // Clean Code!
        uint256 count = tasks.length;
        return count;
    }

    function createTask(string memory content) external {
        // tasks.push(Task(content, false));

        // Clean Code!
        // Task memory newTask = Task(content, false);
        // tasks.push(newTask);

        // Task memory newTask = Task({content: content, isCompleted: false});
        // // Task memory newTask = Task({isCompleted: false, content: content});
        // tasks.push(newTask);

        Task memory newTask;
        newTask.content = content;
        // newTask.isCompleted = false;
        tasks.push(newTask);
    }

    function getTask(uint256 index) external view returns (Task memory) {
        require(index < tasks.length);

        // return tasks[index];

        // Clean Code!
        Task memory theTask = tasks[index];
        return theTask;
    }

    function updateTaskContent(uint256 index, string memory content) external {
        require(index < tasks.length);

        // tasks[index].content = content;

        // Clean Code!
        Task storage theTask = tasks[index];
        theTask.content = content;

        // Note: Warning! Does Not Work!
        // Task memory theTask = tasks[index];
        // theTask.content = content;
    }

    function completeTask(uint256 index) external {
        require(index < tasks.length);

        // tasks[index].isCompleted = true;

        // Clean Code!
        Task storage theTask = tasks[index];
        theTask.isCompleted = true;
    }

    function uncompleteTask(uint256 index) external {
        require(index < tasks.length);

        // tasks[index].isCompleted = false;

        // Clean Code!
        Task storage theTask = tasks[index];
        theTask.isCompleted = false;
    }

    function deleteTask(uint256 index) external {
        require(index < tasks.length);

        // دستور ذیل مناسب نمی‌باشد
        // delete tasks[index];

        // دستور ذیل یک حقه است و البته ترتیب آیتم‌ها تغییر می‌کند
        tasks[index] = tasks[tasks.length - 1];
        tasks.pop();
    }
}
