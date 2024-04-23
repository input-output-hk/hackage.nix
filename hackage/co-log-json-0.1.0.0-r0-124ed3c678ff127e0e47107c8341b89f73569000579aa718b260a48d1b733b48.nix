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
      specVersion = "2.4";
      identifier = { name = "co-log-json"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "(C) 2019-2023 Фонд Талант и Успех";
      maintainer = "alexander.vershilov@sirius.online";
      author = "Alexander Vershilov";
      homepage = "";
      url = "";
      synopsis = "Structured messages support in co-log ecosystem.";
      description = "The library implements of a very simple approach to structured logging, that\nca be used with the [co-log](https://hackage.haskell.org/package/co-log)\necosystem or on it's own see [cheops-logger](https://github.com/cheopslab/cheops-logger).\n\nIt provides:\n\n* \"Colog.Json\" — API for adding structured context to the log messages\n* \"Colog.Json.Action\" — efficient function for dumping logs in the\nfollowing format.\n\nBy default it emits logs in the following format (pretty-printed for convenience):\n\n@\n{ \"namespace\":\"server.package\" -- namespace for the component\n, \"severity\": \\\"DEBUG\\\"          -- severity level\n, \"thread\":19                  -- id of the thread that emitted the message\n, \"message\":\"some long text \"  -- textual message itself\n, \"data\":                      -- user data\n{ \"ip\":\"8.8.8.8\"\n, \"http.request_id\":\"b362cd5db5c193c05312af4d3a399955\"\n, \"http.method\":\\\"DELETE\\\"\n, \"http.path\":\"\\/url\\/\"\n, \"user_id\":\"123\"\n}\n}\n@\n\nThe most interesting thing here is the field @data@ that can be used by the user\nto add additional structured info to the message.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."co-log-core" or (errorHandler.buildDepError "co-log-core"))
          (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
        ];
        buildable = true;
      };
    };
  }