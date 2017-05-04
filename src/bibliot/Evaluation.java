package bibliot;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Elisabeth on 03.05.2017.
 *The goal of the CalcCntrlr Managed Bean is
 * to act as the glue from the View to the business delegate !
 * In JSF I have a Managed Bean in my model;
 * it is necessary because whitout this, the View (and the controller)
 * can`t communicate with the model!
 */
@ManagedBean (name = "message")
@ViewScoped
public class Evaluation  {
  private String name;
  private String medien;
  private String evaluation;
  private String age;
  private String comment;
  private List<Evaluation> evaluationsTogivenBookList;
  private EvaluationDB evaluationDb = new EvaluationDB();
  private String titel = "Der kleine Prinz";


  private List<String> availableEvaluations = Arrays.asList("name", "medien", "evaluation", "age", "comment");
  private List<String> selectedEvaluations;

  public List<String> getAvailableEvaluations() { return availableEvaluations; }
  public void setAvailableEvaluations(List<String> evaluations) { this.availableEvaluations = evaluations; }

  public List<String> getSelectedEvaluations() { return selectedEvaluations; }
  public void setSelectedEvaluations(List<String> selectedEvaluations) { this.selectedEvaluations = selectedEvaluations; }

  public String getName() { return name; }
  public void setName(String name) {
    this.name = name;
  }

  public String getMedien() {
    return medien;
  }
  public void setMedien(String medien) {
    this.medien = medien;
  }

  public String getEvaluation() {
    return evaluation;
  }
  public void setEvaluation(String evaluation) {
    this.evaluation = evaluation;
  }

  public String getAge() {
    return age;
  }
  public void setAge(String age) {
    this.age = age;
  }

  public String getComment() {
    return comment;
  }
  public void setComment(String comment) {
    this.comment = comment;
  }


  public String getTitel() {
    return titel;
  }

  public void setTitel(String titel) {
    this.titel = titel;
  }

  public List<Evaluation> getEvaluationsTogivenBookList() {
    if(evaluationsTogivenBookList == null){
      evaluationsTogivenBookList = evaluationDb.getAllEvaluations(titel);
    }
    return evaluationsTogivenBookList;
  }
  public void setEvaluationsTogivenBookList(List<Evaluation> evaluationsTogivenBookList) { this.evaluationsTogivenBookList = evaluationsTogivenBookList; }
}
