# How I Emacs

I came to Emacs, as so many do, via [Spacemacs](http://spacemacs.org/).  I had already built some familiarity with Vim and was hesitant about undoing that progress, but far too curious about Emacs not to try it out.  Spacemacs is great, but it's a behemoth - there's a lot there, more than I'll ever need to use.  I realized after a few months that I hadn't really learned anything at all about Emacs - I was still using Vim bindings and had only ever added and removed layers from `.spacemacs` - no actual Emacsery afoot.

So, I started fresh.  I buckled down and went through the Emacs tutorial to get the "real" bindings under my fingers and installed everything myself, the "real" way.  I now use a mix of VSCode and Emacs, but I'm glad I took the time to learn how powerful this tool really is.

So, today, we're going to dive through my `init.el`.  Contain your excitement, please, we've only just begun.

Now, Emacs is really a lisp interpreter with a solid text editor bundled.  I've always thought the whole "Emacs vs. Vim" debate was a little ridiculous - they're wildly different tools.  Vim is for when you would use a text editor, Emacs feels much more akin to driving a hyper-customizable IDE.  There's no "Notepad++ vs NetBeans" flame war going on, why should there be one between Vim and Emacs?

Anyway, the goodness starts in a file called `init.el`.  This is an ELisp file that lives in your `emacs.d` directory and is evaluated on startup.  Mine begins with a number of variables being set:

```elisp
(setq delete-old-versions -1 ) ; delete excess backups silently
(setq version-control t )
(setq vc-make-backup-files t )
(setq vc-follow-symlinks t )
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")) )
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)) )
(setq inhibit-startup-screen t )
(setq ring-bell-function 'ignore ) ; silent bell on mistakes
(setq coding-system-for-read 'utf-8 )
(setq coding-system-for-write 'utf-8)
(setq sentence-end-double-space nil)
(setq-default fill-column 80) ; toggle wrapping text at this column
(setq initial-scratch-message "EEEEEEEEEEEmacs...macs...(macs)... Hi Ben." )
(global-display-line-numbers-mode t )
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
```

This section is pretty readable.  You use `setq` to set the value of variables.  Anything set to a value of `-1` is like setting it to `false` - I'm disabling the menu bar and toolbar and all the extra stuff that's on by default.  All the functionality therein is also exposed via endless trees of keyboard commands, and a little later on we'll get some help in that regard.