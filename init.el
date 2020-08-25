(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(defun set-font (font)
  (set-frame-font font nil t)
  (set-face-attribute 'default nil :font font))

(set-font "Operator Mono 13")
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))
(load-theme 'doom-one)
(show-paren-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#282936" "#ea51b2" "#ebff87" "#00f769" "#62d6e8" "#b45bcf" "#62d6e8" "#e9e9f4"])
 '(ansi-term-color-vector
   [unspecified "#282936" "#ea51b2" "#ebff87" "#00f769" "#62d6e8" "#b45bcf" "#62d6e8" "#e9e9f4"])
 '(custom-safe-themes
   (quote
    ("1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "f869a5d068a371532c82027cdf1feefdc5768757c78c48a7e0177e90651503ad" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "b8929cff63ffc759e436b0f0575d15a8ad7658932f4b2c99415f3dde09b32e97" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "a4bd55761752bddac75bad0a78f8c52081a1effb33b69354e30a64869b5a40b9" default)))
 '(ivy-mode t)
 '(package-selected-packages
   (quote
    (flx counsel slime projectile golint go-autocomplete auto-complete go-guru go-mode base16-theme doom-themes)))
 '(vc-annotate-background "#181e26")
 '(vc-annotate-color-map
   (quote
    ((20 . "#98be65")
     (40 . "#b4be6c")
     (60 . "#d0be73")
     (80 . "#ECBE7B")
     (100 . "#e6ab6a")
     (120 . "#e09859")
     (140 . "#da8548")
     (160 . "#d38079")
     (180 . "#cc7cab")
     (200 . "#c678dd")
     (220 . "#d974b7")
     (240 . "#ec7091")
     (260 . "#ff6c6b")
     (280 . "#d6696a")
     (300 . "#ad6769")
     (320 . "#836468")
     (340 . "#5B6268")
     (360 . "#5B6268"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
