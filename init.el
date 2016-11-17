;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs inital config
;; put this file (init.el) in ~/.emacs.d/
;; Set up all for eamcs system
;;
;;; Commentary:
;;
;; Simple emacs script is used to initialize my emacs configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Code:

;;; Begin initialization

(setq gc-cons-threshold 400000000)

;;; Set up package
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;; Bootstrap use-package
;; Install use-package if it's already installed.
;; use-package is used to configure the rest of packages.

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; From use-package Readme
(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(server-start)

;;; Load the Org configuration file



(setq gc-cons-threshold 800000)

;;; init.el Ends here!
