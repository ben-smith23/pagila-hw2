/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */

SELECT special_features, count(*)
FROM film,
LATERAL unnest(film.special_features) AS special_features
GROUP BY special_features
ORDER BY film.special_feature ASC;
