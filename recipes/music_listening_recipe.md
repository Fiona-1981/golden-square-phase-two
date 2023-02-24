# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them._

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
def initialize
  @tracks = []
end

def add(track)
  # User adds tracks
end

def list
  # returns list of tracks
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
music_listening = MusicListening.new
music_listening.list # => []

# 2
music_listening = MusicListening.new
music_listening.add("Stairway to Heaven")
music_listening.list # => ["Stairway to Heaven"]

# 3
music_listening = MusicListening.new
music_listening.add("Stairway to Heaven")
music_listening.add("The Rover")
music_listening.add("In My Time of Dying")
music_listening.list # => ["Stairway to Heaven", "The Rover", "In My Time of Dying"]
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