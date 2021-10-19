;;; Commentary:

(defvar cubeg/default-font-size 150)
(defvar cubeg/default-variable-font-size 150)
(defvar cubeg/default-modeline-font-size 130)

(set-face-attribute 'default nil :font "Inconsolata LGC" :height cubeg/default-font-size)
(set-face-attribute 'fixed-pitch nil :font "Inconsolata LGC" :height cubeg/default-font-size)
(set-face-attribute 'variable-pitch nil :font "Times New Roman" :height cubeg/default-variable-font-size :weight 'regular)

(mac-auto-operator-composition-mode t)
(scroll-bar-mode -1)
(setq prelude-theme nil)
