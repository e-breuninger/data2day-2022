SELECT
  name
  ,id
  ,state
  ,latitude
  ,longitude
  ,DEGREES(ACOS(SIN(RADIANS(latitude)) * SIN(RADIANS($lat)) + COS(RADIANS(latitude)) * COS(RADIANS($lat)) * COS(RADIANS(longitude - $lon)))) * 60 * 1.515 * 1.609344 AS dist_kms
FROM
  [bigquery-public-data:ghcn_d.ghcnd_stations]
ORDER BY
  dist_kms ASC
LIMIT
  1000
