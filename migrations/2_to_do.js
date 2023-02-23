const TodoList = artifacts.require("Todo")

module.exports = function (deployer) {
	deployer.deploy(TodoList)
}
