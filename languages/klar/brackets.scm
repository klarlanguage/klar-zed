("(" @open
  ")" @close)

("[" @open
  "]" @close)

("{" @open
  "}" @close)
  
("#{" @open
  "}" @close)

(("\"" @open
  "\"" @close)
  (#set! rainbow.exclude))

(("'" @open
  "'" @close)
  (#set! rainbow.exclude))

(("`" @open
  "`" @close)
  (#set! rainbow.exclude))

(regex_literal
  ("#/" @open
    "/" @close)
  (#set! rainbow.exclude))

(generic_type
  "<" @open
  ">" @close)

; Enable rainbow quotes for nested strings/regexes inside interpolations
(double_quoted_string
  "\"" @open
  (string_interpolation
    (_
      (string_literal)))
  "\"" @close)

(regex_literal
  "#/" @open
  (regex_interpolation
    (_
      (regex_literal)))
  "/" @close)

; If that doesn't work, try this:
; (double_quoted_string "\"" @open (string_interpolation) "\"" @close)
