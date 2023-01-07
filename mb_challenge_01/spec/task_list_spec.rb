require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end
  it "returns a list of all tasks" do
    task_list = TaskList.new
    task = double :fake_task
    task2 = double :fake_task
    task_list.add(task)
    task_list.add(task2)
    expect(task_list.all).to eq [task, task2]
  end
  it "returns false if tasklist is empty" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end
  it "returns false if not all tasks are done" do
    task_list = TaskList.new
    task = double :fake_task, complete?: true
    task2 = double :fake_task, complete?: false
    task_list.add(task)
    task_list.add(task2)
    expect(task_list.all_complete?).to eq false  
  end
  it "returns true if all tasks are complete" do
    task_list = TaskList.new
    task = double :fake_task, complete?: true
    task2 = double :fake_task, complete?: true
    task_list.add(task)
    task_list.add(task2)
    expect(task_list.all_complete?).to eq true
  end
end
