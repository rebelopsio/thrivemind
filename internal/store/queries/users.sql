-- name: GetUser :one
SELECT * FROM users
WHERE id = $1 LIMIT 1;

-- name: ListUsers :many
SELECT * FROM users
ORDER BY created_at;

-- name: CreateUser :one
INSERT INTO users (
    email,
    password_hash,
    first_name,
    last_name
) VALUES (
             $1, $2, $3, $4
         )
    RETURNING *;

-- name: UpdateUser :one
UPDATE users
set first_name = $2,
    last_name = $3,
    updated_at = NOW()
WHERE id = $1
    RETURNING *;

-- name: DeleteUser :exec
DELETE FROM users
WHERE id = $1;