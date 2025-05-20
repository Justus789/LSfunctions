
#' Hulp bij doorwerken
#'
#' @param x moet 1 van e volgende character strings zijn: "ja", "nee", "bijna", "error"
#'
#' @return wat tekst om je te steunen of laten instorten
#' @export
#'
#' @examples
#' doorzetten("ja")
#' doorzetten("error")
doorzetten <- function(x) {
  if (!is.character(x)) {
    stop("Bekijk de ?doorzetten voor meer informatie over mogelijke invoer")
  }
  if (x == "ja") {
    return("Kom op, nog even doorwerken. Tip: Als je niet naar de tijd kijkt voorkom je tijdstress")
  }
  if (x == "bijna") {
    return("Mooi zo, je kan een korte pauze nemen als je toch meer errors tegenkomt")
  }
  if (x == "nee") {
    return("Weet je zeker dat je klaar bent? Anders zou ik toch ja invoeren bij de variable")
  }
  if (x == "error") {
    return("Oei dat is vervelend, dan toch maar een nacht doorhalen om het te fixen")
  }
  else {
    return("Deze function heeft een paar antwoorden voorbereidt die je kan gebruiken. Check de ?doorzetten om ze te vinden.")
  }
}
doorzetten("meteen")
