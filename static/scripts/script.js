function openNav() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}

document.getElementById('accessibilityToggle').addEventListener('click', function() {
  var elements = document.querySelectorAll('.nav-link, a, h1, h2, h3');
  var image = document.getElementById('toggleImage');
  elements.forEach(function(element) {
      if (element.style.fontFamily === 'Arial, sans-serif') {
          element.style.fontFamily = 'mandatory-plaything-Regular';
          image.src ="../static/assets/accessibilityIconGreen.png"
      } else {
          element.style.fontFamily = 'Arial, sans-serif';
          image.src ="../static/assets/accessibilityIcon.png"
      }
  });
});

document.getElementById('accessibilityToggle').addEventListener('click', function() {
    var body = document.body;
    if (body.style.fontFamily === 'Arial, sans-serif') {
        body.style.fontFamily = 'mandatory-plaything-Regular';
    } else {
        body.style.fontFamily = 'Arial, sans-serif';
    }
  });