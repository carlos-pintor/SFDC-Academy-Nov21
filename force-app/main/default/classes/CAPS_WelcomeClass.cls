public class CAPS_WelcomeClass {
    public static String getWelcomeMessage() {
        //nombre del usuario actual?
        //asignacion a una variable (userName). Le asignamos el resultado de lo que retorna el metodo getName de la clase UserInfo
        String userName = UserInfo.getName(); //ante del punto es la clase . despues del punto es el metodo o atributo
        String currentDate = Date.today() + '';
        String welcomeMessage = 'Hi ' + userName + ', Welcome to Salesforce. Today is ' + currentDate;
        return welcomeMessage;
        //
    }
    
    public static Message welcomeCurrentUser() {
        Message m = new Message();
        m.userName = UserInfo.getName();
        m.currentDate = Date.today();
        return m;
    }
    
    public class Message {
        public String userName;
        public Date currentDate;
    }
}