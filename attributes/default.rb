default["doorman"]["listen_port"] = 80
default["doorman"]["secure_port"] = 443
default["doorman"]["hostname"] = nil
default["doorman"]["proxy_to_host"] = "localhost"
default["doorman"]["proxy_to_port"] = 8080
default["doorman"]["session_maxage"] = "4 * 24 * 60 * 60 * 1000"
default["doorman"]["session_secret"] = "hgkhjldsiu8945jklemn578954892NCANWQOrnej"
default["doorman"]["use_ssl"] = false
default["doorman"]["keyfile"] = "/path/to/keyfile"
default["doorman"]["certfile"] = "/path/to/certfile"
default["doorman"]["cafile"] = nil
default["doorman"]["bypass_paths"] = nil
default["doorman"]["modules"] = {
  "github" => "appId: 'YOUR-GITHUB-APP-ID',
appSecret: 'YOUR-GITHUB-APP-SECRET',
entryPath: '/oauth/github',
callbackPath: '/oauth/github/callback',
requiredOrganization: 'YOUR-ORGANIZATION-NAME'"
}
