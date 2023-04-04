function repeat() {
    const mainText = document.getElementById("mainText").value;
    const times = document.getElementById("times").value;
    const result = document.getElementById("result");
  
    if (!mainText || !times) {
      alert("Please enter both the text and number of times to repeat.");
      return;
    }
  
    let repeatedText = "";
  
    for (let i = 0; i < times; i++) {
      repeatedText += mainText;
      if (i !== times - 1) {
        repeatedText += "\n"; // Add a line break between each repetition, except the last one
      }
    }
  
    result.value = repeatedText;
  }
  
  function copy() {
    const result = document.getElementById("result");
    result.select();
    document.execCommand("copy");
    alert("Copied to clipboard!");
  }
  