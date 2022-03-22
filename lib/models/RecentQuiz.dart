class RecentQuiz {
  final String? icon, title, date, action, description;

  RecentQuiz({this.icon, this.title, this.date, this.action,  this.description});
}

List demoRecentQuizs = [

  RecentQuiz(
    icon: "assets/icons/student.svg",
    title: "Student One",
    description:"call me tallor",
    action: "Edit / Delete",
    date: "23-02-2021",
  ),
  RecentQuiz(
    icon: "assets/icons/student.svg",
    title: "Fuse ODG",
    description:"call me tallor",
    action: "Edit / Delete",
    date: "21-02-2021",
  ),
  RecentQuiz(
    icon: "assets/icons/student.svg",
    title: "Wille Mboma",
    description:"call me tallor",
    action: "Edit / Delete",
    date: "23-02-2021",
  ),
  RecentQuiz(
    icon: "assets/icons/student.svg",
    title: "Wilfred Mboma",
    description:"call me tallor",
    action: "Edit / Delete",
    date: "25-02-2021",
  ),
  RecentQuiz(
    icon: "assets/icons/student.svg",
    title: "Winkford Mboma",
    description:"call me tallor",
    action: "Edit / Delete",
    date: "25-02-2021",
  ),
];
