package bibliot;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Elisabeth on 24.04.2017.
 *
 *The goal of the CalcCntrlr Managed Bean is
 * to act as the glue from the View to the business delegate !
 * In JSF I have a Managed Bean in my model;
 * it is necessary because whitout this, the View (and the controller)
 * can`t communicate with the model!
 */
@ManagedBean
@SessionScoped
public class EvaluationCntrlr {
  //zeigt eingeloggte user bzw. username an.
  @NotNull
  FacesContext facesContext = FacesContext.getCurrentInstance();
  HttpSession session = (HttpSession) facesContext.getExternalContext().getSession(true);
  private String name = session.getAttribute("name").toString();

  @NotNull
  private String medienType;
  @NotNull
  private String evaluation;

  private String medienTitle;
  private String comment;
  private List<String> medienTitles = new ArrayList<>();
  private List<String> availableAges = Arrays.asList("child", "adult", "teen");
  private List<String> selectedAges;
  private String ok;



  private EvaluationDB evaluationDb = new EvaluationDB();

  public String getOk() {
    return ok;
  }

  public void setOk(String ok) {
    this.ok = ok;
  }


  public EvaluationCntrlr (){
    medienTitles = evaluationDb.getBooks();
    medienTitles.addAll(evaluationDb.getDVDs());
  }

  /**
   * The add methods return "comments" which denotes a logical outcome;
   * @return "comments"  the container forwards to the comments.xhtml page !
   */
  public String add(){
    evaluationDb.add(name,medienTitle,evaluation, selectedAges,comment);
    //com = evaluationDb.getAlLComments();
    ok="Bewertung wurde erstellt!";
    return "comments";
  }



  public ArrayList<String> getAllName(){
    ArrayList<String> names = new ArrayList<>();
    return names;
  }

  public List<String> getAvailableAges() {
    return availableAges;
  }

  public void setAvailableAges(List<String> availableAges) {
    this.availableAges = availableAges;
  }

  public List<String> getSelectedAges() {
    return selectedAges;
  }

  public void setSelectedAges(List<String> selectedAges) {
    this.selectedAges = selectedAges;
  }

  public String getMedienType() { return medienType; }
  public void setMedienType(String medienType) { this.medienType = medienType; }

  public List<String> getMedienTitles() { return medienTitles; }
  public void setMedienTitles(List<String> medienTitles) { this.medienTitles = medienTitles; }

  public EvaluationDB getEvaluationDb() { return evaluationDb; }
  public void setEvaluationDb(EvaluationDB evaluationDb) { this.evaluationDb = evaluationDb; }

  public String getName(){return name; }
  public void setName(String name){
    this.name = name;
  }

  public String getMedienTyp() {
    return medienType;
  }
  public void setMedienTyp(String medienType) {
    this.medienType = medienType;
  }

  public String getMedienTitle() { return medienTitle; }
  public void setMedienTitle(String medienTitle) { this.medienTitle = medienTitle; }

  public String getEvaluation() { return evaluation; }
  public void setEvaluation(String evaluation) { this.evaluation = evaluation; }

  public String getComment() { return comment; }
  public void setComment(String comment) { this.comment = comment; }

}