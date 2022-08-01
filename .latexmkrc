# Hauptdatei (damit man die nicht angeben muss)
@default_files = ("DSGVO-ExtendedVersion");

# "neues" Datei-Tracking verwenden
$recorder = 1;

# Ausgabezeilenlänge erhöhen
$ENV{'max_print_line'} = $log_wrap = 1000;

# beim Aufräumen weitere Dateien mit wegwerfen
$clean_ext = "acn acr alg bbl glg glo gls ist lol"
