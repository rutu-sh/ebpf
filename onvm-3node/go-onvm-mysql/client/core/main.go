package main

import (
	"database/sql"
	"fmt"
	"os"
	"time"

	_ "github.com/go-sql-driver/mysql"
)

func getDBConnection() *sql.DB {
	user := os.Getenv("DB_USER")
	password := os.Getenv("DB_PASSWORD")
	dbname := os.Getenv("DB_NAME")
	dbhost := os.Getenv("DB_HOST")
	dbport := os.Getenv("DB_PORT")

	connStr := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s", user, password, dbhost, dbport, dbname)
	fmt.Println(connStr)
	db, err := sql.Open("mysql", connStr)
	if err != nil {
		panic(err)
	}
	db.SetConnMaxLifetime(time.Minute * 3)
	db.SetMaxOpenConns(10)
	db.SetMaxIdleConns(10)
	return db
}

func runSampleSelect(dbConn *sql.DB) {

	rows, err := dbConn.Query("SELECT * FROM sample_table")
	if err != nil {
		panic(err)
	}
	defer rows.Close()

	for rows.Next() {
		var id int
		var name string
		var age int
		var email string
		err = rows.Scan(&id, &name, &age, &email)
		if err != nil {
			panic(err)
		}
		fmt.Println(id, name)
	}
}

func main() {
	dbConn := getDBConnection()
	defer dbConn.Close()
	for {
		runSampleSelect(dbConn)
		time.Sleep(5 * time.Second)
	}
}
