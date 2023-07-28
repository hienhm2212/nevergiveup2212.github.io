;; Load the publishing system
(require 'ox-publish)

(setq org-html-validation-link nil
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />")

;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "my-org-site"
             :recursive t
             :base-directory "./content"
             :publishing-directory "./public"
             :publishing-function 'org-html-publish-to-html
             :with-author nil        ;; Don't include author name
             :with-creator t         ;; Include Emacs and Org versions in footer
             :with-toc t             ;; Include a table of contents
             :section-numbers nil    ;; Don't include section numbers
             :time-stamp-file nil))) ;; Don't include time stamp in file

;; Generate the site output
(org-publish-all t)
(message "Build complete!")
