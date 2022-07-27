resource "aws_cognito_user_pool" "pool" {
  name = "tf-user-pool"
}

resource "aws_cognito_user_pool_client" "client" {
  name = "api-client"
  user_pool_id = aws_cognito_user_pool.pool.id
  generate_secret     = true
  explicit_auth_flows = ["ADMIN_NO_SRP_AUTH"]
}