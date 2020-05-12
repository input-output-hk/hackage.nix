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
      identifier = { name = "bookkeeping-jp"; version = "0.1.1.4"; };
      license = "MIT";
      copyright = "2017 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/haskell-bookkeeping-jp#readme";
      url = "";
      synopsis = "Helper functions for Japanese bookkeeping.";
      description = "Helper functions of [bookkeeping module](https://github.com/arowM/haskell-bookkeeping#readme) for Japanese bookkeeping.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bookkeeping" or (errorHandler.buildDepError "bookkeeping"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "bookkeeping-jp-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bookkeeping-jp" or (errorHandler.buildDepError "bookkeeping-jp"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."bookkeeping-jp" or (errorHandler.buildDepError "bookkeeping-jp"))
            ];
          buildable = true;
          };
        };
      };
    }