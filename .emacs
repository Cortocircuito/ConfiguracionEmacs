;; No mostrar el mensaje inicial de ayuda y bienvenida:
(setq inhibit-startup-message t)

;; No mostrar la barra de menú con los botones de acción
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Deshabilitar las copias de seguridad de ficheros
(setq make-backup-files nil)

;; Cargar la ruta del modo emmet descargado con git
(add-to-list 'load-path "~/.emacs.d/emmet-mode")
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; Enable Emmet's css abbreviation
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indent-after-insert nil)))
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent 2 spaces
(setq emmet-move-cursor-between-quotes t) ;; default nil

;; Ver el número de línea en el editor
(require 'linum)
(global-linum-mode 1)
;; Poder eliminar líneas bajo entorno windows con cygwin
(global-set-key "\C-cd" 'kill-whole-line) ;; Sets 'C-c d' to 'M-x kill-whole-line'
