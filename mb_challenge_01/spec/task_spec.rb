require "task"

RSpec.describe Task do
  it "constructs" do
    task = Task.new("Walk the dog")
    expect(task.title).to eq "Walk the dog"
  end

  it "can be marked as complete" do
    task = Task.new("Walk the dog")
    task.mark_complete
    expect(task.complete?).to eq true
  end
  it "checkes if a task has been marked as complete" do
    task = Task.new("Walk the dog")
    task_2 = Task.new("Wash the dog")
    task.mark_complete
    expect(task.complete?).to eq true
  end
end
