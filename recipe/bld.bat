:: Some SystemRequirements are optional: gmp, libxml2, glpk
:: Update ./src/{Makevars.win, config.h} based on the availability of the
:: optional SystemRequirements provided via meta.yaml.
bash ./configure
bash -c "mv src/Makevars src/Makevars.win"

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
