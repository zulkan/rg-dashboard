package domain

type User struct {
	ID          int64  `json:"userId"`
	Name        string `json:"userName"`
	Email       string `json:"userEmail"`
	PhoneNumber string `json:"userPhoneNumber"`
}

type UserUseCase interface {
}

type UserRepository interface {
}
