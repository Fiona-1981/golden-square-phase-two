require "track_tasks"

RSpec.describe TrackTasks do
  context "given no tasks" do
    it "has an empty list" do
      track_tasks = TrackTasks.new
      expect(track_tasks.list).to eq []
      end
    end

    context "given one task" do
      it "has a single item in list" do
        track_tasks = TrackTasks.new
        track_tasks.add("Take out the bins")
        expect(track_tasks.list).to eq ["Take out the bins"]
      end
    end

    context "given multiple tasks" do
      it "has a multiple items in list" do
        track_tasks = TrackTasks.new
        track_tasks.add("Take out the bins")
        track_tasks.add("Clean the sink")
        track_tasks.add("Do the vacuuming")
        expect(track_tasks.list).to eq ["Take out the bins", "Clean the sink", "Do the vacuuming"]
      end
    end

    context "task completed" do
      it "removes a task from the list" do
        track_tasks = TrackTasks.new
        track_tasks.add("Take out the bins")
        track_tasks.add("Clean the sink")
        track_tasks.add("Do the vacuuming")
        track_tasks.done("Take out the bins")
        expect(track_tasks.list).to eq ["Clean the sink", "Do the vacuuming"]
      end
    end

    context "try to complete non existent task" do
      it "fails" do
        track_tasks = TrackTasks.new
        track_tasks.add("Clean the sink")
        expect { track_tasks.done("Wash the dog") }.to raise_error "No such task."
        track_tasks.list # fails
      end
    end
  end