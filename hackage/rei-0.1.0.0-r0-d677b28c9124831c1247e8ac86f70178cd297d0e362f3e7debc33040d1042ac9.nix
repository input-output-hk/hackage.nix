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
      identifier = { name = "rei"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "Daniel";
      homepage = "https://github.com/kerkomen/rei";
      url = "";
      synopsis = "Process lists easily";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rei" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
          buildable = true;
        };
      };
    };
  }