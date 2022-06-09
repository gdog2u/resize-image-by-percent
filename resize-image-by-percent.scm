(define (resize-image-by-percent filepath
                                    percent)
    
    (
        let* (
            (image (car (gimp-file-load RUN-NONINTERACTIVE filepath filepath)))
            (drawable 0)
            (imageWidth 10)
            (imageHeight 10)
            (filename (split-filename-extension filepath))
            (newFileName "")
        )

        (set! percent (/ percent 100))
        (set! drawable (car (gimp-image-get-active-layer image)))
        (set! imageWidth (car (gimp-drawable-width drawable)))
        (set! imageHeight (car (gimp-drawable-height drawable)))
        (set! newFileName (string-append (car filename) "_scaled." (cadr filename)))
        (gimp-image-scale image (* imageWidth percent) (* imageHeight percent))
        (gimp-file-save 1 image drawable newFileName newFileName)

        
    )
)
(script-fu-register
    "resize-image-by-percent"
    ""
    "Resize an image by a certain percentage, and save it to a new file with \"_scaled\" appended to its original name."
    "Geoffrey Hudson"
    "copyright 2022, Geoffrey Hudson"
    "June 8, 2022"
    ""
    SF-STRING "Absolute or relative file path" ""
    SF-VALUE "Percent to reduce or increase image size by" ""
)
