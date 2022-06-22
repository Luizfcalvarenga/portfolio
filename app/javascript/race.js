const player1 = document.querySelectorAll("#player1_race td");
const player2 = document.querySelectorAll("#player2_race td");


let i = 0;
let j = 0;


const pressKey = (e) => {
  if (e.key === "q") {
    i += 1;
    player1[i].classList.add('active');
    player1[i - 1].classList.remove('active');
    if (player1[i].classList.contains('finish')) {
      player1[i].classList.add('this_is_the_end1');
      player1[i].classList.remove('active');
      setTimeout(alert, 100, "Player 1 won!");
      window.setTimeout(window.location.reload.bind(window.location), 200);
    }
  } else if (e.key === "m") {
    j += 1;
    player2[j].classList.add('active');
    player2[j - 1].classList.remove('active');
    if (player2[j].classList.contains('finish')) {
      player2[j].classList.add('this_is_the_end2');
      player2[j].classList.remove('active');
      setTimeout(alert, 100, "Player 2 won!");
      window.setTimeout(window.location.reload.bind(window.location), 200);
    }
  }
};

window.addEventListener('keyup', pressKey, false);
