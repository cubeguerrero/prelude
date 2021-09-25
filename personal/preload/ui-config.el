;;; Commentary:

(defvar cubeg/default-font-size 130)
(defvar cubeg/default-variable-font-size 130)
(defvar cubeg/default-modeline-font-size 110)

(set-face-attribute 'default nil :font "Menlo" :height cubeg/default-font-size)
(set-face-attribute 'fixed-pitch nil :font "Menlo" :height cubeg/default-font-size)
(set-face-attribute 'variable-pitch nil :font "Helvetica" :height cubeg/default-variable-font-size :weight 'regular)

(setq prelude-theme 'leuven)
