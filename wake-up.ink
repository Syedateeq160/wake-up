VAR energy = 1
VAR discipline = 0
VAR focus = 0

=== start ===
You wake up. It’s 11:47 AM.

Your room is dark. Leftover pizza on the floor. Phone buzzing with meaningless notifications.

You feel numb.

This is your **comfort zone** — and it's quietly destroying you.

* [Get up and open the curtains] -> open_curtains
* [Scroll your phone a bit longer] -> scroll_phone

=== open_curtains ===
You drag yourself up and open the curtains. Sunlight hits your face. It stings.

But something inside you shifts — just a little.

~ energy = energy + 1
-> first_decision

=== scroll_phone ===
You scroll aimlessly for another 30 minutes. Feeds, memes, reels.

You sigh. What are you even doing?

~ energy = energy - 1
-> first_decision

=== first_decision ===
You stand in the middle of your room. You feel… lost. But the day isn’t over.

What will you tackle first?

* [Go for a walk to clear your head] -> go_walk
* [Watch YouTube, maybe a podcast] -> watch_podcast
* [Lie down again] -> give_up_day

=== go_walk ===
You put on whatever shoes you can find and step outside.

Your legs feel heavy, but the breeze is real.

You walk, and walk, and breathe.

~ energy = energy + 1
~ focus = focus + 1

-> walk_after

=== watch_podcast ===
You start a productivity podcast, but halfway through you open another tab.

You tell yourself it still counts.

~ focus = focus + 0
~ discipline = discipline - 1

-> distracted

=== give_up_day ===
You lie back down. Just for a moment.

It turns into hours. You wake up hungry and guilty.

-> bad_day

=== walk_after ===
You return home, slightly sweaty. For the first time in a while, you feel *alive*.

What’s next?

* [Read a chapter from a book] -> read_book
* [Clean your room] -> clean_room

=== distracted ===
You watched three videos. None of them really helped.

You still feel empty.

-> bad_day

=== read_book ===
You pick up a book you once started but never finished.

You get into it. You highlight a few ideas.

It feels like progress.

~ discipline = discipline + 1
~ focus = focus + 1

-> choose_next

=== clean_room ===
You play music and begin cleaning.

You find old notes, a journal, your gym card.

Dust clouds your face, but something feels lighter inside.

~ discipline = discipline + 2

-> choose_next

=== choose_next ===
You feel your momentum building.

What do you want to tackle next?

* [Cook a healthy meal] -> healthy_meal
* [Workout for 20 minutes] -> quick_workout

=== healthy_meal ===
You cook something simple. Eggs, oats, whatever you have.

Not perfect. But better than takeout.

~ energy = energy + 1
~ discipline = discipline + 1

-> moment_of_clarity

=== quick_workout ===
You do 20 push-ups. Then 20 more. You’re sweating. Muscles shaking.

But you're proud.

~ energy = energy + 1
~ focus = focus + 1

-> moment_of_clarity

=== moment_of_clarity ===
You sit down.

It’s still the same room.

But something’s changed.

You.

{discipline >= 3 and focus >= 2:
    You feel the fire reigniting. You’re no longer the prisoner of comfort.

    You’ve taken the first step back to being a high-performing human.

    -> transformed
- else:
    You’ve started the journey. But there’s still work to do.

    -> progress_made
}

=== transformed ===
You look in the mirror and smile.

Not because you’re there — but because you’re finally on your way.

-> END

=== progress_made ===
Today was a start. Tomorrow will be better.

And this time, you mean it.

-> END

=== bad_day ===
You close your eyes. Another day wasted.

But something whispers: *“You can choose differently tomorrow.”*

-> END
