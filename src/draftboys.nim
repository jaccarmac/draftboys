import dom

proc addEventListener(target: ref TDocument, `type`: cstring,
                      listener: proc (event: TEvent), useCapture: bool = false)
                     {.importc: "EventTarget.prototype.addEventListener.call".}

proc placeholderListener(event: TEvent) =
  document.getElementById("placeholder").innerHTML = "Hello from Nim!"

document.addEventListener("deviceready", placeholderListener)
