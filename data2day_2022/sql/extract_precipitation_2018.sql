SELECT
    STRING(wx.date) AS date
    ,wx.value/10.0 AS prcp
FROM
  [bigquery-public-data:ghcn_d.ghcnd_2018] AS wx
WHERE
  id = $station_id
  AND qflag IS NULL
  AND element = 'PRCP'
ORDER BY wx.date
