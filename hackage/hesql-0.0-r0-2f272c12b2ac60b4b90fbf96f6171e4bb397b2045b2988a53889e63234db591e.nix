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
      specVersion = "1.2";
      identifier = { name = "hesql"; version = "0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Christoph Bauer <ich@christoph-bauer.net>";
      author = "Christoph Bauer <ich@christoph-bauer.net>";
      homepage = "";
      url = "";
      synopsis = "Haskell's embedded SQL";
      description = "hesql rewrites SQL-function to Haskell/HDBC-functions";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hesql" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }