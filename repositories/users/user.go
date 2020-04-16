package users

type User struct {
	Login          string `db:"login"`
	Password       string `db:"password"`
	Name           string `db:"name"`
	Surname        string `db:"surname"`
	Photo          string `db:"photo"`
	Technology     string `db:"technology"`
	Stage          string `db:"stage"`
	ProgressPoints int64  `db:"progressPoints"`
}
type Repository interface {
	Create(user *User) error
	Get(login string) (*User, error)
	Update(user *User) error
	Delete(login string) error
	Listing() ([]User, error)
}
