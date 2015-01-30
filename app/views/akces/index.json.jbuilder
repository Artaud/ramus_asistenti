json.array!(@akces) do |akce|
  json.extract! akce, :id, :termin_od, :termin_do, :nazev, :typ_akce_id
  json.url akce_url(akce, format: :json)
end
