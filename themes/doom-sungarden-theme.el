;;; doom-sungarden-theme.el --- minimal low contrast theme -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Copyright (C) 2021 Anthony Bowyer-Lowe
;;
;; Author: Anthony Bowyer-Lowe <https://github.com/anthony>
;; Maintainer: Anthony Bowyer-Lowe <anthony@lowbroweye.com>
;; Created: April 05, 2021
;; Modified: April 05, 2021
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/anthony/emacs-doom-themes
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;
;;
;;; Code:

(require 'doom-themes)

;;
(defgroup doom-sungarden-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(defcustom doom-sungarden-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-sungarden-theme
  :type '(choice integer boolean))

;;
(def-doom-theme doom-sungarden
  "A light theme, low contrast theme"

  ;; name        default   256       16
  ((bg         '("#fafaf8" nil       nil            ))
   (bg-alt     '("#f0f0f0" nil       nil            ))
   (base0      '("#f0f0f0" "#f0f0f0" "white"        ))
   (base1      '("#e7e7e7" "#e7e7e7" "brightblack"  ))
   (base2      '("#dfdfdf" "#dfdfdf" "brightblack"  ))
   (base3      '("#c6c7c7" "#c6c7c7" "brightblack"  ))
   (base4      '("#9ca0a4" "#9ca0a4" "brightblack"  ))
   (base5      '("#383a42" "#424242" "brightblack"  ))
   (base6      '("#202328" "#2e2e2e" "brightblack"  ))
   (base7      '("#1c1f24" "#1e1e1e" "brightblack"  ))
   (base8      '("#1b2229" "black"   "black"        ))
   (fg         '("#383a42" "#424242" "black"        ))
   (fg-alt     '("#c6c7c7" "#c7c7c7" "brightblack"  ))

   (grey       base5)
   (red        '("#e45649" "#e45649" "red"          ))
   (orange     '("#7a3b5c" "#dd8844" "brightred"    ))
   (green      '("#556b2f" "#556b2f" "green"        ))
   (teal       '("#4db5bd" "#44b9b1" "brightgreen"  ))
   (yellow     '("#986801" "#986801" "yellow"       ))
   (yellow-alt '("#fafadd" "#fafadd" "yellow"       ))
   (blue       '("#014980" "#014980" "brightblue"   ))
   (dark-blue  '("#030f64" "#030f64" "blue"         ))
   (magenta    '("#a626a4" "#a626a4" "magenta"      ))
   (violet     '("#b751b6" "#b751b6" "brightmagenta"))
   (cyan       '("#0184bc" "#0184bc" "brightcyan"   ))
   (dark-cyan  '("#005478" "#005478" "cyan"         ))

   ;; Extra
   (delimiter-3       '("#8ec07c" "#87af87"                 ))
   (light3            '("#665c54" "#626262" "grey"          ))
   (light4            '("#7c6f64" "#767676" "grey"          ))
   (faded-red         '("#cc241d" "#d75f5f" "red"           ))
   (faded-green       '("#98971a" "#afaf00" "green"         ))
   (faded-yellow      '("#d79921" "#ffaf00" "yellow"        ))
   (faded-blue        '("#458588" "#87afaf" "blue"          ))
   (faded-orange      '("#d65d0e" "#ff8700" "brightorange"  ))
   (faded-aqua        '("#689d6a" "#87af87" "brightcyan"    ))
   (dark-green        '("#1E521E" "#004f00"                 ))
   (dark-red          '("#421E1E" "#5f0000"                 ))
   (dark-blue         '("#2B3C44" "#000087"                 ))
   (dark-aqua         '("#36473A" "#005f5f"                 ))
   (sienna            '("#dd6f48" "d7875f"                  ))
   (lightblue4        '("#66999D" "#5fafaf" "brightblue"    ))
   (burlywood4        '("#BBAA97" "#aafaf87"                ))
   (aquamarine4       '("#83af98" "#87af87"                 ))
   (turquoise4        '("#61ACBB" "#5fafaf" "brightblue"    ))

   ;; face categories -- required for all themes
   (highlight      blue)
   (vertical-bar   (doom-darken base2 0.1))
   (selection      base1)
   (builtin        fg)
   (comments       (doom-lighten grey 0.4))
   (doc-comments   (doom-lighten grey 0.3))
   (constants      fg)
   (functions      blue)
   (keywords       dark-cyan)
   (methods        fg)
   (operators      fg)
   (type           fg)
   (strings        green)
   (variables      fg)
   (numbers        orange)
   (region         `(,(doom-darken (car bg-alt) 0.05) ,@(doom-darken (cdr base0) 0.1)))
   (error          dark-red)
   (warning        yellow)
   (success        green)
   (vc-modified    faded-orange)
   (vc-added       faded-green)
   (vc-deleted     dark-red)

   ;; custom categories
   (-modeline-bright t)
   (-modeline-pad
    (when doom-sungarden-padded-modeline
      (if (integerp doom-sungarden-padded-modeline) doom-sungarden-padded-modeline 2)))

   (modeline-fg     nil)
   (modeline-fg-alt (doom-blend violet base4 (if -modeline-bright 0.5 0.2)))

   (modeline-bg
    (if -modeline-bright
        (doom-darken base2 0.05)
      base1))
   (modeline-bg-l
    (if -modeline-bright
        (doom-darken base2 0.1)
      base2))
   (modeline-bg-inactive (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(doom-darken (car bg-alt) 0.05) ,@(cdr base1))))

  ;; --- extra faces ------------------------
  ((centaur-tabs-unselected :background bg-alt :foreground base4)
   (font-lock-comment-face
    :foreground comments)
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments
    :slant 'italic)

   ((line-number &override) :foreground (doom-lighten base4 0.15))
   ((line-number-current-line &override) :foreground base8)

   ;; Override secondary selection
   ((secondary-selection &override) :background base2)

   ;; Change swiper colours, background and foreground are too close
   ((swiper-match-face-1 &override) :foreground bg :background fg)
   ((swiper-line-face    &override) :background (doom-lighten blue 0.70) :foreground fg)
   ((ivy-minibuffer-match-face-1 &override) :foreground (doom-darken grey 0.70))

   ;; Apply bold value for different things
   (font-lock-builtin-face       :inherit 'bold)
   (font-lock-function-name-face :inherit 'bold)
   (font-lock-keyword-face       :inherit 'bold)
   (font-lock-type-face          :inherit 'bold)

   (doom-modeline-bar :background (if -modeline-bright modeline-bg highlight))

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis
    :foreground (if -modeline-bright base8 highlight))

   (solaire-hl-line-face    :background nil :foreground nil)
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-l)))

   ;; magit
   ((magit-diff-hunk-heading           &override) :foreground base4 :background bg :bold bold)
   ((magit-diff-hunk-heading-highlight &override) :foreground fg    :background bg :bold bold)
   (magit-blame-heading     :foreground orange :background bg-alt)
   (magit-diff-removed :foreground (doom-darken red 0.2) :background (doom-blend red bg 0.1))
   (magit-diff-removed-highlight :foreground red :background (doom-blend red bg 0.2) :bold bold)

   ;; --- major-mode faces -------------------
   ;; css-mode / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   ;; js2
   (js2-warning                    :underline `(:style wave :color ,yellow))
   (js2-error                      :underline `(:style wave :color ,red))
   (js2-external-variable          :underline `(:style wave :color ,cyan))
   (js2-jsdoc-tag                  :background nil :foreground grey  )
   (js2-jsdoc-type                 :background nil :foreground light4)
   (js2-jsdoc-value                :background nil :foreground light3)
   (js2-function-param             :background nil :foreground cyan)
   (js2-function-call              :background nil :foreground blue)
   (js2-instance-member            :background nil :foreground orange)
   (js2-private-member             :background nil :foreground yellow)
   (js2-private-function-call      :background nil :foreground faded-aqua)
   (js2-jsdoc-html-tag-name        :background nil :foreground light4)
   (js2-jsdoc-html-tag-delimiter   :background nil :foreground light3)
   (js2-instance-member            :background nil :foreground blue)
   (js2-object-property            :background nil :foreground blue)

   ;; markdown-mode
   (markdown-markup-face     :foreground base5)
   (markdown-header-face     :inherit 'bold :foreground red)
   ((markdown-code-face &override)       :background base1)
   (mmm-default-submode-face :background base1)

   ;; org-mode: make outline just the same colour as normal text
   ((outline-1 &override) :foreground fg)
   ((outline-2 &override) :foreground fg)
   ((outline-3 &override) :foreground fg)
   ((outline-4 &override) :foreground fg)
   ((outline-5 &override) :foreground fg)
   ((outline-6 &override) :foreground fg)
   ((outline-7 &override) :foreground fg)
   ((outline-8 &override) :foreground fg)
   ;; org-mode: make unfinished cookie and todo keywords to be very bright to
   ;; grab attention
   ((org-todo &override) :foreground red)
   ;; org-mode: make tags and dates to have pretty box around them
   ((org-tag &override)   :foreground fg :background yellow-alt
    :box `(:line-width -1 :color ,base5 :style 'released-button))
   ((org-date &override)  :foreground fg :background base1
    :box `(:line-width -1 :color ,base5  :style 'released-button))
   ;; org-mode: Make drawers and special keywords (like scheduled) to be very bleak
   ((org-special-keyword &override)  :foreground grey)
   ((org-drawer          &override)  :foreground grey)
   ;; org-mode: Make ellipsis as bleak as possible and reset any underline and boxing
   ;; properties
   (org-ellipsis :underline nil :box nil :foreground fg :background bg)
   ;; org-mode: Make blocks have a slightly different background
   ((org-block &override) :background base1)
   ((org-block-begin-line &override) :foreground fg :slant 'italic)
   ((org-quote &override) :background base1)
   ((org-table &override) :foreground fg)

   ;; org-agendamode: make "unimportant" things like distant deadlines and
   ;; things scheduled for today to be bleak.
   (org-upcoming-deadline         :foreground base8)
   (org-upcoming-distant-deadline :foreground fg)
   (org-scheduled                 :foreground fg)
   (org-scheduled-today           :foreground fg)
   (org-scheduled-previously      :foreground base8)

   ;; Indent guides character face
   (highlight-indent-guides-character-face :foreground base2)

   ;; helm
   (helm-candidate-number :background blue :foreground bg)

   ;; web-mode
   (web-mode-current-element-highlight-face :background dark-blue :foreground bg)
   (web-mode-html-tag-face :foreground dark-green)
   (web-mode-keyword-face :foreground "#402478")

   ;; paren-match
   (show-paren-match :foreground "#369429" :background "#ffffff")
   (show-paren-mismatch :foreground "#f0f0f0" :background "#b43629")
   (rainbow-delimiters-unmatched-face :foreground "#f0f0f0" :background "#b43629")

   ;; wgrep
   (wgrep-face :background base1)

   ;; ediff
   (ediff-current-diff-A        :foreground red   :background (doom-lighten red 0.8))
   (ediff-current-diff-B        :foreground green :background (doom-lighten green 0.8))
   (ediff-current-diff-C        :foreground blue  :background (doom-lighten blue 0.8))
   (ediff-current-diff-Ancestor :foreground teal  :background (doom-lighten teal 0.8))

   ;; tooltip
   (tooltip :background base1 :foreground fg)

   ;; posframe
   (ivy-posframe               :background base0)

   ;; lsp
   (lsp-ui-doc-background      :background base0)
   (lsp-face-highlight-read    :background (doom-blend red bg 0.3))
   (lsp-face-highlight-textual :inherit 'lsp-face-highlight-read)
   (lsp-face-highlight-write   :inherit 'lsp-face-highlight-read)

   ;; mu4e
   (mu4e-highlight-face         :background bg :inherit 'bold)
   (mu4e-header-highlight-face :foreground dark-blue :inherit 'bold)
   (mu4e-unread-face :foreground blue)
   )

  ;; --- extra variables ---------------------
  ()
  )

(provide 'doom-sungarden-theme)
;;; doom-sungarden-theme.el ends here
