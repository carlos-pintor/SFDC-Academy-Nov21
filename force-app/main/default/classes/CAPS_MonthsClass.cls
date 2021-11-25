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

    /**
     * @description Creates a map with month number and month names pair values and returns the filled map
     * @return A map with month numbers as keys and month names as values
     */
    public static Map<Integer, String> getMonthsMap() {
        Map<Integer, String> monthMap = new Map<Integer, String>();
        monthMap.put(1, 'Enero');
        monthMap.put(2, 'Febrero');
        monthMap.put(3, 'Marzo');
        monthMap.put(4, 'Abril');
        monthMap.put(5, 'Mayo');
        monthMap.put(6, 'Junio');
        monthMap.put(7, 'Julio');
        monthMap.put(8, 'Agosto');
        monthMap.put(9, 'Septiembre');
        monthMap.put(10, 'Octubre');
        monthMap.put(11, 'Noviembre');
        monthMap.put(12, 'Diciembre');
        return monthMap;
    }
}
