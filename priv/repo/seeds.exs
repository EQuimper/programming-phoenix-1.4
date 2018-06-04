alias Rumbl.Repo
alias Rumbl.Multimedia

for category <- ~w(Action Drama Romance Comedy Sci-fi) do
  Repo.get_by(Multimedia.Category, name: category) ||
    Repo.insert!(%Multimedia.Category{name: category})
end
