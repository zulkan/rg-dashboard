package usecase

import (
	"github.com/zulkan/rg-dashboard/domain"
)

type packageUseCase struct {
	repo domain.PackageRepository
}

func (p packageUseCase) GetPackagesStatusByUserId(userId string) domain.UserPackagesStatus {
	panic("implement me")
}

func NewPackageUseCase(repo domain.PackageRepository) domain.PackageUseCase {
	return &packageUseCase{repo: repo}
}
