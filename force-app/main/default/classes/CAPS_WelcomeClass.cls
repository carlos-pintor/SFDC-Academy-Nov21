/**
 * @author Carlos Pintor
 * @date 2021-10-30
 * @description Apex Class example to handle first steps with apex coding.
 *              This class implements methods to welcome users
 */
public class CAPS_WelcomeClass {
    /**
     * @description Gets current user info and current date to create and return a welcome message
     * @return A string message with a welcome message for current user
     */
    public static String getWelcomeMessage() {
        //nombre del usuario actual?
        //asignacion a una variable (userName). Le asignamos el resultado de lo que retorna el metodo getName de la clase UserInfo
        String userName = UserInfo.getName(); //ante del punto es la clase . despues del punto es el metodo o atributo
        String currentDate = Date.today() + '';
        String welcomeMessage = 'Hi ' + userName + ', Welcome to Salesforce. Today is ' + currentDate;
        return welcomeMessage;
        //
    }
    
    /**
     * @description Gets an object with two attributes for current user name and current date
     * @return a Message object with current user name and current date
     */
    public static Message welcomeCurrentUser() {
        Message m = new Message();
        m.userName = UserInfo.getName();
        m.currentDate = Date.today();
        return m;
    }
    
    /**
     * @description Message class to save current user name and current date
     */
    public class Message {
        public String userName;
        public Date currentDate;
    }
}