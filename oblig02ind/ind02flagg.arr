use context essentials2021
fun flag(country) :
  if (country == "norge") :
    frame(
      overlay-align("left", "top", rectangle(60, 60, "solid", "crimson"),
        overlay-align("left", "bottom", rectangle(60, 60, "solid", "crimson"),
          overlay-align("right", "top", rectangle(120, 60, "solid", "crimson"),
            overlay-align("right", "bottom", rectangle(120, 60, "solid", "crimson"),
    overlay-align("left", "top", rectangle(70, 70, "solid", "white"),
    overlay-align("left", "bottom", rectangle(70, 70, "solid", "white"),
    overlay-align("right", "top", rectangle(130, 70, "solid", "white"),
    overlay-align("right", "bottom", rectangle(130, 70, "solid", "white"),
                      rectangle(220, 160, "solid", "dark blue"))))))))))
  
  else if (country == "sverige") :
    frame(
      overlay-align("left", "top", rectangle(65, 65, "solid", "steel-blue"),
        overlay-align("left", "bottom", rectangle(65, 65, "solid", "steel-blue"),
          overlay-align("right", "top", rectangle(125, 65, "solid", "steel-blue"),
            overlay-align("right", "bottom", rectangle(125, 65, "solid", "steel-blue"),
              rectangle(220, 160, "solid", "gold"))))))
  
  else if (country == "danmark") :
        frame(
  overlay-align("left", "top", square(120, "solid", "red"),
    overlay-align("left", "bottom", square(120, "solid", "red"),
      overlay-align("right", "top", rectangle(180, 120, "solid", "red"),
        overlay-align("right", "bottom", rectangle(180, 120, "solid", "red"),
          rectangle(340, 280, "solid", "white"))))))
    
  else if (country == "finland") :
      frame(
      overlay-align("left", "top", rectangle(50, 40, "solid", "white"),
        overlay-align("left", "bottom", rectangle(50, 40, "solid", "white"),
          overlay-align("right", "top", rectangle(100, 40, "solid", "white"),
            overlay-align("right", "bottom", rectangle(100, 40, "solid", "white"),
              rectangle(180, 110, "solid", "dark-blue"))))))
    
  else if (country == "island") : 
    frame(
      overlay-align("left", "top", square(70, "solid", "blue"),
    overlay-align("left", "bottom", square(70, "solid", "blue"),
      overlay-align("right", "top", rectangle(140, 70, "solid", "blue"),
        overlay-align("right", "bottom", rectangle(140, 70, "solid", "blue"),
          overlay-align("left", "top", square(80, "solid", "white"),
            overlay-align("left", "bottom", square(80, "solid", "white"), 
              overlay-align("right", "top", rectangle(150, 80, "solid", "white"),
                overlay-align("right", "bottom", rectangle(150, 80, "solid", "white"),
                  rectangle(250, 180, "solid", "red"))))))))))
 
  else if (country == "færøyene") : 
    frame(
  overlay-align("left", "top", square(60, "solid", "white"),
    overlay-align("left", "bottom", square(60, "solid", "white"),
      overlay-align("right", "top", rectangle(120, 60, "solid", "white"),
        overlay-align("right", "bottom", rectangle(120, 60, "solid", "white"),
          overlay-align("left", "top", square(70, "solid", "blue"),
            overlay-align("left", "bottom", square(70, "solid", "blue"), 
              overlay-align("right", "top", rectangle(130, 70, "solid", "blue"),
                overlay-align("right", "bottom", rectangle(130, 70, "solid", "blue"),
                  rectangle(220, 160, "solid", "red"))))))))))
  end
end

flag("norge")
flag("sverige")
flag("danmark")
flag("finland")
flag("island")
flag("færøyene")