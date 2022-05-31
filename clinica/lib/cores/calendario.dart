class Calendario {
  static String formatToTextDate(DateTime date) {
    return "${date.year} ${months[date.month]} ${date.day}";
  }

  static String extractHourDate(DateTime date) {
    final hora = date.hour < 10 ? 0 : '';
    final minuto = date.minute < 10 ? 0 : '';
    return "$hora${date.hour}:$minuto${date.minute} hr";
  }

  static const months = {
    1: "Janeiro",
    2: "Fevereiro",
    3: "Maço",
    4: "Abril",
    5: "Maio",
    6: "Junho",
    7: "Julho",
    8: "Agosto",
    9: "Setembro",
    10: "Outubro",
    11: "Novembro",
    12: "Dezembro",
  };
}