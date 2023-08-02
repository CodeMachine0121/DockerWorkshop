package main

import (
	gin "github.com/gin-gonic/gin"
)

type IndexData struct {
	Title   string
	Content string
}

func test(c *gin.Context) {
	c.JSON(200, gin.H{"message": "Test for docker"})
}

func main() {
	server := gin.Default()
	server.GET("/", test)
	err := server.Run(":8888")
	if err != nil {
		return
	}
}
