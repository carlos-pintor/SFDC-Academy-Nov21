/**
 * @author Carlos Pintor
 * @date 2021-11-06
 * @description Apex Class example to handle first steps with apex coding.
 *              This class implements methods to work with list and maps
 */
public with sharing class CAPS_MonthsClass {

    /**
     * @description Creates a String list to save month names and print them using a for loop
     */
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
