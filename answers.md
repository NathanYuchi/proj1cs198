# Q0: Why is this error being thrown?

No pokemon model has been created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

If there are trainer-less Pokemon then one of them will appear randomly every refresh.
The pokemon that appear are all trainer-less.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Creates a button medium that has the words "Throw a Pokeball!" on it.  When pressed, it passes the id of the pokemon displayed to the pokemon controller's capture method.

# Question 3: What would you name your own Pokemon?

Jeb.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in a path leading to the profile of the trainer that had his or her pokemon damaged.  The path needed a trainer id.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

applcation.html.erb is a applies to every layout and at the end of it, it renders all messages generated in an alert box.

# Give us feedback on the project and decal below!

More than enough time given for the project.  Instructors were helpful and active on Piazza.  Project was challenging in some parts in the right ways.

# Extra credit: Link your Heroku deployed app
