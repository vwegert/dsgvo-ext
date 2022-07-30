## ================================================================================================
##   .latexmkrc - Steuerdatei für latexmk
## ================================================================================================

#
# Hauptdatei (damit man die nicht angeben muss)
#
@default_files = ("APL-19HH");

#
# pdfLaTeX als Default
#
#$pdf_mode = 1;

#
# "neues" Datei-Tracking verwenden
#
$recorder = 1;

#
# makeglossaries-Aufrufe mit integrieren
#
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
  if ( $silent ) {
    system "makeglossaries -q -s '$_[0].ist' '$_[0]'";
  }
  else {
    system "makeglossaries -s '$_[0].ist' '$_[0]'";
  };
}

#
# .aux-Dateien nicht mit wegwerfen 
# ACHTUNG: benötigt latexmk Version 4.53a oder höher
# siehe http://personal.psu.edu/jcc8/latexmk/versions.html
#
# @generated_exts = ( 'bcf', 'fls', 'idx', 'ind', 'lof', 'lot', 
#                     'out', 'toc' );

#
# maximale Anzahl der Durchläufe
#
#$max_repeat = 2;

#
# increase output / log line length to reduce line breaks
#
$ENV{'max_print_line'} = $log_wrap = 1000;

#
# beim Aufräumen weitere Dateien mit wegwerfen
#
$clean_ext = "acn acr alg bbl glg glo gls ist lol"
