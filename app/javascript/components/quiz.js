const activeClass = () => {
  document.querySelectorAll('.answer-quiz').forEach((answer) => {

    answer.addEventListener('click', (event) => {
      document.querySelectorAll('.answer-quiz').forEach((element) => {
        element.classList.remove("active");
      });
      answer.classList.add("active");
    });
  });
};


export { activeClass }
// active focus a ajouter dans class de label
