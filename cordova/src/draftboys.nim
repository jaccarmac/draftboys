import dom

const
  endpoint = "http://0-dot-draftboys-dota.appspot.com"

proc lazyRequest(endpoint: cstring): cstring {.importc.}

proc placeholderListener(event: ref TEvent) =
  let
    placeholder = document.getElementById("placeholder")
    api = lazyRequest(endpoint)
  placeholder.innerHTML = "Hello from Nim! "
  placeholder.innerHTML = $placeholder.innerHTML & $api

document.addEventListener("deviceready", placeholderListener)
