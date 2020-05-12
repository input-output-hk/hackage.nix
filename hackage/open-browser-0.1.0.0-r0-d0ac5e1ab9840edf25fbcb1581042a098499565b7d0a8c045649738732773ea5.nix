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
      identifier = { name = "open-browser"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rightfold@gmail.com";
      author = "rightfold";
      homepage = "";
      url = "";
      synopsis = "Open a web browser from Haskell.";
      description = "Open a web browser from Haskell.\nCurrently only OS X is supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."open-browser" or (errorHandler.buildDepError "open-browser"))
            ];
          buildable = true;
          };
        };
      };
    }