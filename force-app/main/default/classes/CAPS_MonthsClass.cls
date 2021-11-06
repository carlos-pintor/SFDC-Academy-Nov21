public with sharing class CAPS_MonthsClass {

    public static void getMonthNames() {
        List<String> monthNames = new List<String>();
        monthNames.add('Enero');
        monthNames.add('Febrero');
        monthNames.add('Marzo');
        monthNames.add('Abril');
        monthNames.add('Mayo');
        monthNames.add('Junio');
        monthNames.add('Julio');
        monthNames.add('Agosto');
        monthNames.add('Septiembre');
        monthNames.add('Octubre');
        monthNames.add('Noviembre');
        monthNames.add('Diciembre');

        for (Integer i = 0; i < monthNames.size(); i++) {
            System.debug(LoggingLevel.INFO, i + ':' + monthNames[i]);
        }

        /*for (String month : monthNames) {
            System.debug(LoggingLevel.INFO, month);
        }*/
    }
}
