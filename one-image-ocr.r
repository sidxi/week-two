R version 4.0.0 (2020-04-24) -- "Arbor Day"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> setwd("~/School/Carleton/HIST 3814/R Studio Folder")
> # install only the first time
> install.packages('magick')
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/Sid Boegman/Documents/R/win-library/4.0’
(as ‘lib’ is unspecified)
also installing the dependencies ‘Rcpp’, ‘magrittr’, ‘curl’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/Rcpp_1.0.4.6.zip'
Content type 'application/zip' length 3167712 bytes (3.0 MB)
downloaded 3.0 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/magrittr_1.5.zip'
Content type 'application/zip' length 157235 bytes (153 KB)
downloaded 153 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/curl_4.3.zip'
Content type 'application/zip' length 4126336 bytes (3.9 MB)
downloaded 3.9 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/magick_2.3.zip'
Content type 'application/zip' length 20288623 bytes (19.3 MB)
downloaded 19.3 MB

package ‘Rcpp’ successfully unpacked and MD5 sums checked
package ‘magrittr’ successfully unpacked and MD5 sums checked
package ‘curl’ successfully unpacked and MD5 sums checked
package ‘magick’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Sid Boegman\AppData\Local\Temp\RtmpgJUzwm\downloaded_packages
> install.packages('tesseract')
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/Sid Boegman/Documents/R/win-library/4.0’
(as ‘lib’ is unspecified)
also installing the dependencies ‘sys’, ‘askpass’, ‘qpdf’, ‘pdftools’, ‘rappdirs’, ‘digest’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/sys_3.3.zip'
Content type 'application/zip' length 59438 bytes (58 KB)
downloaded 58 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/askpass_1.1.zip'
Content type 'application/zip' length 243467 bytes (237 KB)
downloaded 237 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/qpdf_1.1.zip'
Content type 'application/zip' length 2037058 bytes (1.9 MB)
downloaded 1.9 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/pdftools_2.3.zip'
Content type 'application/zip' length 10839262 bytes (10.3 MB)
downloaded 10.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/rappdirs_0.3.1.zip'
Content type 'application/zip' length 147708 bytes (144 KB)
downloaded 144 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/digest_0.6.25.zip'
Content type 'application/zip' length 244575 bytes (238 KB)
downloaded 238 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.0/tesseract_4.1.zip'
Content type 'application/zip' length 12827006 bytes (12.2 MB)
downloaded 12.2 MB

package ‘sys’ successfully unpacked and MD5 sums checked
package ‘askpass’ successfully unpacked and MD5 sums checked
package ‘qpdf’ successfully unpacked and MD5 sums checked
package ‘pdftools’ successfully unpacked and MD5 sums checked
package ‘rappdirs’ successfully unpacked and MD5 sums checked
package ‘digest’ successfully unpacked and MD5 sums checked
package ‘tesseract’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Sid Boegman\AppData\Local\Temp\RtmpgJUzwm\downloaded_packages
> # tell R which packages you need
> library(magick)
Linking to ImageMagick 6.9.9.14
Enabled features: cairo, freetype, fftw, ghostscript, lcms, pango, rsvg, webp
Disabled features: fontconfig, x11
> library(magrittr)
> library(tesseract)
First use of Tesseract: copying language data...

> text <- image_read("OCR Image Week 2 - 14th CGH war diaries.jpg") %>%
+     image_resize("2000") %>%
+     image_convert(colorspace = 'gray') %>%
+     image_trim() %>%
+     image_ocr()
> 
> 
> text <- image_read("OCR Image Week 2 - 14th CGH war diaries.jpg") %>%
+     image_resize("2000") %>%
+     image_convert(colorspace = 'gray') %>%
+     image_trim() %>%
+     image_ocr()
> write.table(text, "output.txt")