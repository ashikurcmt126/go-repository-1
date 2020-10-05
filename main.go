package main

import (
	"fmt"
	"net/http"
)


func main(){

	fmt.Println("WOrkDayEmployee is now listening to : http://localhost:8084")
	http.HandleFunc("/hello",Hello)
	http.ListenAndServe(":8084",nil)

}

func Hello(writer http.ResponseWriter, request *http.Request) {
	fmt.Fprintf(writer,"Hello Ashikur Rahman Rashid !!!!")
}

