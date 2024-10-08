package main

import (
	"fmt"

	"github.com/sirupsen/logrus"
)

func main() {
	logrus.Info("Application is starting...")
	fmt.Println("Hello, NEW BRANCH World!")
	logrus.Info("Application has ended.")

}
