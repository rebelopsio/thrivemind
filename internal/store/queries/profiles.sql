-- name: CreateUserProfile :one
INSERT INTO user_profiles (
    user_id,
    height_cm,
    weight_kg,
    goal,
    tracking_preference,
    daily_calorie_target
) VALUES (
             $1, $2, $3, $4, $5, $6
         ) RETURNING *;

-- name: GetUserProfile :one
SELECT * FROM user_profiles
WHERE user_id = $1;

-- name: UpdateUserProfile :one
UPDATE user_profiles SET
                         height_cm = COALESCE($2, height_cm),
                         weight_kg = COALESCE($3, weight_kg),
                         goal = COALESCE($4, goal),
                         tracking_preference = COALESCE($5, tracking_preference),
                         daily_calorie_target = COALESCE($6, daily_calorie_target),
                         updated_at = NOW()
WHERE user_id = $1
    RETURNING *;