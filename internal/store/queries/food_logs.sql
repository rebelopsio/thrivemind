-- name: CreateFoodLog :one
INSERT INTO food_logs (
    user_id,
    food_id,
    servings,
    meal_type,
    logged_at,
    notes
) VALUES (
             $1, $2, $3, $4, $5, $6
         ) RETURNING *;

-- name: GetUserFoodLogs :many
SELECT
    fl.*,
    f.name as food_name,
    f.calories,
    f.protein_g,
    f.carbs_g,
    f.fat_g
FROM food_logs fl
         JOIN foods f ON fl.food_id = f.id
WHERE fl.user_id = $1
  AND fl.logged_at >= $2
  AND fl.logged_at < $3
ORDER BY fl.logged_at DESC;