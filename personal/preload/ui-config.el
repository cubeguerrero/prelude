;;; Commentary:

(defvar cubeg/default-font-size 140)
(defvar cubeg/default-variable-font-size 140)
(defvar cubeg/default-modeline-font-size 120)

(set-face-attribute 'default nil :font "JetBrains Mono" :height cubeg/default-font-size)
(set-face-attribute 'fixed-pitch nil :font "JetBrains Mono" :height cubeg/default-font-size)
(set-face-attribute 'variable-pitch nil :font "Times New Roman" :height cubeg/default-variable-font-size :weight 'regular)

(mac-auto-operator-composition-mode t)
