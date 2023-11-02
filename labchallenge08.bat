:: lines 26 - 29 is checking to see if the source exist.
:: if it doesnt exist it will echo error source folder does not exist.
:: lines 31-34 is checking to see if the destination path exist.
::  if it doesnt it will echo error destination folders does not exist.
:: lines 36 command for robust copy
:: lines 38 - 42 if the error code is level 8
:: then state (echo)  Error: ROBOCOPY encountered errors during the copy operation.
:: if not  echo Copy operation completed successfully. Meaning there are no errors  and the operation is successful


if not exist "!sourcePath!\" (
    echo Error: Source folder does not exist.
    goto :eof
)


if not exist "!destinationPath!\" (
    echo Error: Destination folder does not exist.
    goto :eof
)


robocopy "!sourcePath!" "!destinationPath!" /E


if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)


:: end of the script
:eof


:: end of local
endlocal
