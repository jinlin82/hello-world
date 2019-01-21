he above conflict might then have looked like this:

<<<<<<< HEAD
Take the blue pill.
||||||| merged common ancestors
Take either the blue or the red pill, but not both.
=======
Take the red pill.
>>>>>>> feature

If that were the case, then the above conflict resolution would not have been
correct, which demonstrates why seeing the original version alongside the
conflicting versions can be useful.

You can perform the conflict resolution completely by hand, but Emacs also
provides some packages that help in the process: Smerge, Ediff ((ediff)Top), and
Emerge ((emacs)Emerge). Magit does not provide its own tools for conflict
resolution, but it does make using Smerge and Ediff more convenient. (Ediff
supersedes Emerge, so you probably don’t want to use the latter anyway.)
