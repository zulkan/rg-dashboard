package domain

type Package struct {
	ID     int64  `json:"id"`
	Name   string `json:"packageName"`
	Serial string `json:"packageSerial"`
	Tag    string `json:"packageTag"`
}

type PackageOrderStatus struct {
	Package
	OrderStatus string `json:"orderStatus"`
}

type UserPackagesStatus struct {
	User
	PackageOrderStatus []PackageOrderStatus
}

type PackageUseCase interface {
	GetPackagesStatusByUserId(userId string) UserPackagesStatus
}

type PackageRepository interface {
	GetPackagesStatusByUserId(userId string) UserPackagesStatus
}
