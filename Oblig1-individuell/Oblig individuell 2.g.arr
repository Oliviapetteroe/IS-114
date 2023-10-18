use context essentials2021
overlay-align("left", "top", square(65, "solid", "red"),
  overlay-align("left", "bottom", square(65, "solid", "red"),
    overlay-align("right", "top", rectangle(123, 65, "solid", "red"),
      overlay-align("right", "bottom", rectangle(123, 65, "solid", "red"),
        overlay-align("left", "top", square(73, "solid", "white"),
          overlay-align("left", "bottom", square(73, "solid", "white"), 
            overlay-align("right", "top", rectangle(131, 73, "solid", "white"),
              overlay-align("right", "bottom", rectangle(131, 73, "solid", "white"),
                rectangle(220, 160, "solid", "blue")))))))))
