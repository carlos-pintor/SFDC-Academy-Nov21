// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

CAPS_MonthsClass.getMonthNames();

Map<Integer, String> mapa = CAPS_MonthsClass.getMonthsMap();
System.debug('Map > Mes:' + mapa.get(1));
System.debug('Map > Mes:' + mapa.get(13));