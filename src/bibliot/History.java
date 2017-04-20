package bibliot;

import java.time.LocalDateTime;

/**
 * Created by Elisabeth on 16.04.2017.
 *
 */
public class History {
  private String url;
  private LocalDateTime datetime = LocalDateTime.now();


  public void setUrl(String url) {
    this.url = url;
  }

  public String getUrl() {
    return url;
  }

  public LocalDateTime getDatetime() {
    return datetime;
  }

  public void setDatetime(LocalDateTime datetime) {
    this.datetime = datetime;
  }
}

