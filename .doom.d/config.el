;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "xos4 Terminus" :size 18)
(setq doom-font (font-spec :family "Terminus (TTF)" :size 18)
      ;;(setq doom-font (font-spec :family "MonaspiceRn Nerd Font Mono" :size 18)
      ;;doom-serif-font (font-spec :family "WenQuanYi WenQuanYi Bitmap Song")
      ;;doom-variable-pitch-font(font-spec :family "xos4 Terminus" :size 14)
      ;;doom-big-font(font-spec :family "xos4 Terminus" :size 14)
      ;;doom-serif-font(font-spec :family "xos4 Terminus" :size 14)
      ;;doom-unicode-font (font-spec :family "WenQuanYi WenQuanYi Bitmap Song":size 18)
      ;;doom-emoji-font (font-spec :family "monospace":size 18 )
      )

;; (defun init-cjk-fonts()
;;   (dolist (charset '(kana han cjk-misc bopomofo))
;;     (set-fontset-font (frame-parameter nil 'font)
;;       charset (font-spec :family "WenQuanYi WenQuanYi Bitmap Song" :size 14))))
;;         (add-hook 'doom-init-ui-hook 'init-cjk-fonts)

;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(better-jumper-mode +1)
(with-eval-after-load 'evil-maps
  (define-key evil-motion-state-map (kbd "C-o") 'better-jumper-jump-backward)
  (define-key evil-motion-state-map (kbd "C-i") 'better-jumper-jump-forward))
(add-hook 'better-jumper-post-jump-hook 'recenter)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(undecorated . t))
(add-to-list 'default-frame-alist '(fullscreen . maximized))


(global-unset-key (kbd "M-k"))
(global-unset-key (kbd "C-k"))

(add-hook 'go-mode-hook 'lsp-deferred)
(add-hook 'go-mode-hook (lambda()
                          (make-local-variable 'compile-command)
                          (setq compile-command "go build -v")
                          )
          )

(map!
 (:map evil-window-map
       "H" #'evil-window-decrease-width
       "J" #'evil-window-decrease-height
       "K" #'evil-window-increase-height
       "L" #'evil-window-increase-width))

(setq select-enable-primary 't)
(setq select-enable-clipboard 't)

(setq lsp-rust-server 'rust-analyzer)

(setq doom-modeline-workspace-name t)

(setq company-minimum-prefix-length 1)
