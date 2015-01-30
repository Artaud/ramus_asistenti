json.array!(@asistents) do |asistent|
  json.extract! asistent, :id, :jmeno, :email, :telefon, :poznamka, :ma_mlcenlivost
  json.url asistent_url(asistent, format: :json)
end
