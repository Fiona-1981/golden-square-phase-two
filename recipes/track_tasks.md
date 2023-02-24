# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list._

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class TrackTasks
  def initialize
  end

  def add(task)
  end

  def view_tasks
    # Views tasks and takes into account tasks_done
  end

  def tasks_done(task)
    # Fails if task isn't in list.
  end

end

```
```ruby
# 1
track_tasks = TrackTasks.new
track_tasks.list # => []

# 2
track_tasks = TrackTasks.new
track_tasks.add("Take out the bins")
track_tasks.list # => ["Take out the bins"]

# 3
track_tasks = TrackTasks.new
track_tasks.add("Take out the bins")
track_tasks.add("Clean the sink")
track_tasks.add("Do the vacuuming")
track_tasks.list # => ["Take out the bins", "Clean the sink", "Do the vacuuming"]

# 4
track_tasks = TrackTasks.new
track_tasks.complete("Take out the bins")
track_tasks.add("Clean the sink")
track_tasks.add("Do the vacuuming")
track_tasks.list # => ["Clean the sink", "Do the vacuuming"]

# 5
track_tasks = TrackTasks.new
track_tasks.complete("Take out the bins")
track_tasks.add("Clean the sink")
track_tasks.add("Do the vacuuming")
track_tasks.complete("Wash the dog")
track_tasks.list # => Fail. No such task exists.

```
_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->