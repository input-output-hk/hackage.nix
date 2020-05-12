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
      identifier = { name = "haskell-compression"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hawk.alan@gmail.com";
      author = "Alan Hawkins";
      homepage = "codekinder.com";
      url = "";
      synopsis = "";
      description = "Compress files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."boolean-list" or (errorHandler.buildDepError "boolean-list"))
          ];
        buildable = true;
        };
      exes = {
        "hs-compress" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."boolean-list" or (errorHandler.buildDepError "boolean-list"))
            ];
          buildable = true;
          };
        };
      };
    }