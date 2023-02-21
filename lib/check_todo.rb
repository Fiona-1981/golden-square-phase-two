def check_todo(text)
  todo_checked = text.split(" ")
  if todo_checked.include?("TODO")
    return true
  else
    return false
  end
end