// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.22.0

package store

import (
	"context"

	"github.com/google/uuid"
)

type Querier interface {
	CreateFoodLog(ctx context.Context, arg CreateFoodLogParams) (FoodLog, error)
	CreateUser(ctx context.Context, arg CreateUserParams) (User, error)
	CreateUserProfile(ctx context.Context, arg CreateUserProfileParams) (UserProfile, error)
	DeleteUser(ctx context.Context, id uuid.UUID) error
	GetUser(ctx context.Context, id uuid.UUID) (User, error)
	GetUserFoodLogs(ctx context.Context, arg GetUserFoodLogsParams) ([]GetUserFoodLogsRow, error)
	GetUserProfile(ctx context.Context, userID uuid.UUID) (UserProfile, error)
	ListUsers(ctx context.Context) ([]User, error)
	UpdateUser(ctx context.Context, arg UpdateUserParams) (User, error)
	UpdateUserProfile(ctx context.Context, arg UpdateUserProfileParams) (UserProfile, error)
}

var _ Querier = (*Queries)(nil)
