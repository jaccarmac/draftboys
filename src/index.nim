import dom

proc querySelector(baseElement: ref dom.TNode, selectors: cstring):
  ref dom.TNode {.importc: "Element.prototype.querySelector.call".}

proc receivedEvent(id: cstring) =
  var parentElement = document.getElementByID(id)
  var listeningElement = parentElement.querySelector(".listening")
  var receivedElement = parentElement.querySelector(".received")
  listeningElement.setAttribute("style", "display: none")
  receivedElement.setAttribute("style", "display: block")

proc onDeviceReady() =
  receivedEvent("deviceready")

proc addEventListener(typee: cstring,
                      listener: proc (),
                      useCapture: bool)
                      {.importc: "document.addEventListener".}

proc bindEvents() =
  addEventListener("deviceready", onDeviceReady, false)

bindEvents()
