import dom

proc placeholderListener(event: ref TEvent) =
  document.getElementById("placeholder").innerHTML = "Hello from Nim!"

document.addEventListener("deviceready", placeholderListener)
