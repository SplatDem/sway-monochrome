;;; gh.el --- Github API client libraries -*- lexical-binding: t; -*-

;; Copyright (C) 2011  Yann Hodique

;; Author: Yann Hodique <yhodique@gmail.com>
;; Keywords:
;; Package-Version: 20230825.1217
;; Package-Revision: b5a8d8209340
;; Homepage: https://github.com/sigma/gh.el

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;;

;;; Code:

(require 'gh-gist)
(require 'gh-pulls)
(require 'gh-issues)
(require 'gh-users)

(provide 'gh)
;;; gh.el ends here

;; Local Variables:
;; indent-tabs-mode: nil
;; End:
