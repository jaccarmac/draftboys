package draftboys

import (
        "fmt"
        "net/http"
)

func init() {
        http.HandleFunc("/api/placeholder", placeholder)
}

func placeholder(w http.ResponseWriter, r *http.Request) {
        w.Header().Add("Access-Control-Allow-Origin", "*")
        fmt.Fprint(w, "Hello from App Engine!")
}
