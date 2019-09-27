workflow "Starting" {
  resolves = ["First interaction", "HTTP client"]
  on = "push"
}

action "GitHub Action for npm" {
  uses = "actions/npm@f11f0a33bb81074e6448ed3737cbc6ca4e1318d2"
}

action "First interaction" {
  uses = "actions/first-interaction@215051d77c3ebf704bb3f11dc853ccde76c985ef"
  needs = ["GitHub Action for npm"]
}

action "HTTP client" {
  uses = "swinton/httpie.action@69125d73caa2c6821f6a41a86112777a37adc171"
  needs = ["GitHub Action for npm"]
}
