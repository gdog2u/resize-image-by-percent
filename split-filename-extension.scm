(define (split-filename-extension file) 
    (
        let* (
                (nameParts (strbreakup file "."))
                (name (unbreakupstr(butlast nameParts) "."))
                (ext (last nameParts))
        )

        
        (set! nameParts (last nameParts)) ; set extension
        (cons name nameParts)
    )
)
(script-fu-register
    "split-filename-extension"
    ""
    "Return a list of a file's name and its extension\nForked from https://stackoverflow.com/a/10966342/2708601"
    "Phil Colbourn, Geoffrey Hudson"
    "copyright 2012, Phil Colbourn;\
        2022, Geoffrey Hudson"
    "June 8, 2022"
    ""
    SF-STRING "File path" ""
)