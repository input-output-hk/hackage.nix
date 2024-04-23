{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hedis-config"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s9gf4ult@gmail.com";
      author = "Aleksey Uimanov";
      homepage = "https://bitbucket.org/s9gf4ult/hedis-config";
      url = "";
      synopsis = "Easy trivial configuration for Redis";
      description = "Datatype to parse redis connection settings from file like\n\n> host: localhost                 # host name or address\n> port: 6379                      # you can specify either port\n> # socket: /run/redis.socket     # or unix socket path\n> # service: redis                # or service name\n> password: \"pass\"                # if not specified then no password used\n> database: 0                     # database number to connect to\n> max-connections: 5              # max connections in pool\n> max-idle-time: 30               # keep connection open for 30 seconds";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }