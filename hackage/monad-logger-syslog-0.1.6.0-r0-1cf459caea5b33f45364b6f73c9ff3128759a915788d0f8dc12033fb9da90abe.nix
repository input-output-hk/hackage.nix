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
      identifier = { name = "monad-logger-syslog"; version = "0.1.6.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ernesto Hernández-Novich <haskell@iamemhn.link>";
      author = "Greg Weber & FP Complete Developers";
      homepage = "https://github.com/fpco/monad-logger-syslog";
      url = "";
      synopsis = "syslog output for monad-logger";
      description = "syslog output for monad-logger";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }