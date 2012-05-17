# TaskPong

The original idea came to me in an article on LifeHacker:
[How to Make Your To-Do List Doable](http://lifehacker.com/270404/how-to-make-your-to+do-list-doable)
in which they talk about us playing one of two roles throughout the day: boss and worker.

In boss mode you are planning and organizing what your work will be. The worker is just supposed to 
buckle down and do...

So, I thought of playing ping pong back and forth with my projects and tasks. One section being a location
where you can outline projects and break them down into steps, you can review output and focus and reorder
priorities based on this or other urgent matters, set goals, etc. Finally after all is said and done, 
a task list will be assigned. Then this list will be worked with complete focus.

Some concepts that I have been toying with in regard to this project:

* [Pomodoro Technique](http://www.pomodorotechnique.com/).  I am a big fan of breaking my work into
pomodoros and would like to organize the tasks in this manner. Keeping track of pomodoros completed,
distractions, etc would be a plus
* [Final Version](http://www.markforster.net/). This is a great cyclical way to keep your tasks in view
and provides some structure for picking the task list.  I have a further requirement that I need
to address, though, as I will mention below.  But the overall todo list would be maintained in this
way. The tasks then picked and bundled to be done.
* [WorkFlowy](https://workflowy.com/). Definitely something like this to view projects (something that
is lacking in the Final Version). Mine would need a mechanism to move next doable tasks to the
list (instead of how I do it now where I just have the project name on my list and do some unnamed
quantity on it until I feel I need to work on something else).

There are a few issues I specifically want to address in my life with this project:

* Goals.  I want to put my projects and tasks in a framework where they are pointing towards specific goals
* Production vs. Learning. I am a learning junkie. I am quite content to continue learning new things
without allowing myself the opportunity to apply them.  I need to limit this impulse and force myself
to be productive.  So, I need to measure how much time I spend producing versus learning.
* Skills. I would like to be able to see how much time I spend on specific skills and how long it may
have been since I exercised a particular skill.
* Time tracking. I would like to track how much time I spend on specific tasks, how much time on projects,
etc, to have a better understanding of how my time is spent.
* Production. I would also like to include some measure of productivity. So, I would like to track files/lines 
added.

While I see this whole project as important, I would like to do this in an agile manner if I can, so I need to 
break this down into MVPs. As such the most important thing I think I have is getting a handle on
learning v. production.  So that is where I will start.

What do I need:

* I need to be able to enter what I am working on at the moment. 
  - Description
  - indication of whether this is learning or production
  - log start time
* I need to be able to mark that I have stopped working on that for the moment
* I need to be able to see a report showing production vs learning time.

So, that translates to:

1. Entry form to take initial information.
2. When submitted, a second form to allow completion.
3. Report.  

That should be simple enough.  I will implement that and start using it and then can assess what the next 
feature set should be.
  -+