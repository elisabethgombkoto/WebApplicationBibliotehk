package bibliot;

/**
 * Created by Elisabeth on 28.03.2017.
 *
 * Container Class
 */
public class VisitorsBookEntry {

    private String _firstname;
    private String _lastname;
    private String _email;
    private String _message;
    public VisitorsBookEntry(String firstname, String lastname, String email, String message){
        _firstname=firstname;
        _lastname=lastname;
        _email=email;
        _message=message;
    }

    public String get_firstname() {
        return _firstname;
    }

    public String get_lastname() {
        return _lastname;
    }

    public String get_email() {
        return _email;
    }

    public String get_message() {
        return _message;
    }
}
