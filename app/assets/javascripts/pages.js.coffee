$ ->
  dateDom = $("#counter")
  dateNum = dateDom.html()
  dateOb = new Date(dateNum)
  dateStr = countdown(dateOb, null, ~(countdown.HOURS | countdown.MINUTES | countdown.SECONDS | countdown.MILLISECONDS))
  dateDom.html dateStr.toString()

