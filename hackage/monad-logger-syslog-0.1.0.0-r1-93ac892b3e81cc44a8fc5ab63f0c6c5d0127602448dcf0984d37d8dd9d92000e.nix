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
      identifier = { name = "monad-logger-syslog"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "greg@gregweber.info";
      author = "Greg Weber";
      homepage = "https://github.com/docmunch/monad-logger-rsyslog";
      url = "";
      synopsis = "rsyslog output for monad-logger";
      description = "rsyslog output for monad-logger";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "smoke" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."monad-logger-syslog" or (errorHandler.buildDepError "monad-logger-syslog"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
          ];
          buildable = true;
        };
      };
    };
  }