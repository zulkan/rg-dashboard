package sqllite

import (
	"database/sql"
	"github.com/zulkan/rg-dashboard/domain"
	"log"
)

type packageRepository struct {
	DB *sql.DB
}

func (p packageRepository) GetPackagesStatusByUserId(userId string) domain.UserPackagesStatus {
	rows, err := p.DB.Query(
		`
		SELECT users.id as user_id, users.name as user_name, users.email as user_email, users.phone_number AS user_phone_number, orders.status AS order_status, packages.name AS package_name
		FROM "users"
		JOIN orders ON orders.user_id = users.id
		JOIN packages ON packages.id = orders.package_id
`,
	)
	if err != nil {
		log.Println(err)
		return domain.UserPackagesStatus{}
	}

	for rows.Next() {

	}

	return domain.UserPackagesStatus{}
}

func NewPackageRepository(db *sql.DB) domain.PackageRepository {
	return &packageRepository{DB: db}
}
