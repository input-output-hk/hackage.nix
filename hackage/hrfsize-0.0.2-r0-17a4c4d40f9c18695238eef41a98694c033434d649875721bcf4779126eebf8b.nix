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
      specVersion = "1.12";
      identifier = { name = "hrfsize"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dias Kozhabay <librerush@tutanota.com>";
      author = "Dias Kozhabay <librerush@tutanota.com>";
      homepage = "https://github.com/librerush/hrfsize#readme";
      url = "";
      synopsis = "File size in human readable format";
      description = "Simple Haskell library for determining size of file in human readable format";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "hrfsize-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."hrfsize" or (errorHandler.buildDepError "hrfsize"))
          ];
          buildable = true;
        };
      };
    };
  }