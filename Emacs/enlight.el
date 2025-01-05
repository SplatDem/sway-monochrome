(load-file "/home/splatdem/.emacs.d/grid.el")
(require 'grid)
;;ENLIGHT
(setopt initial-buffer-choice #'enlight)
(setq code-dir "/home/splatdem/code"
      splatpack-dir (concat code-dir "/SplatPack")
      rust-dir (concat code-dir "/rust"))
 
(defvar logo
  (propertize
   "  
\t\t--------------------------------

\t\t\t\t Just install 1 more plugin...

\t\t--------------------------------
" 'face nil))
 
(defvar ui-menu-folders
       '(("DIRECTORIES \n"
         ("Rust" (dired rust-dir))
	 ("SplatPack" (dired splatpack-dir))
         ("Emacs Config" (dired "~/.emacs.d/init.el") "e")
         ("Home" (dired "~") "h")
         ("Root" (dired "/") "r"))))
 
(defvar ui-menu-progs
    '(("PROGRAMS \n"
       ("Terminal" (vterm) "t")
       ("Web Browser" (eww "duckduckgo.com")))))
 
(defun efetch ()
  (concat
   ;; (propertize "SYS INFO: \n--------------\n" 'face '(:foreground "#FF2D5F"))
   (propertize "SMTH LIKE INFO\n" 'face '(:foreground "#FFDE21"))
  "Hostname: " (or (shell-command-to-string "cat /etc/hostname") "N/A")
  ;; "\tDisks" (or (shell-command-to-string "lsblk") "N/A")
  ;; "MEM: " (or (shell-command-to-string "lsmem") "N/A")
  (or (shell-command-to-string "uname -a") "N/A")
  ))
 
(use-package enlight
   :custom
   (enlight-content
    (concat
     (grid-get-box
      `( :align center :content ,logo))
    (grid-get-row
     `( ,(enlight-menu ui-menu-folders)
	"      "
	,(enlight-menu ui-menu-progs)
	"      "
	,(efetch)
	)))))
