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
      identifier = { name = "quantizer"; version = "0.3.1.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/quantizer";
      url = "";
      synopsis = "Library to provide the behaviour similar to quantum states superposition. ";
      description = "Has three modules with similar functionality. The functions provide the somewhat generalized way to round the numbers based on some data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."minmax" or (errorHandler.buildDepError "minmax"))
          (hsPkgs."monoid-insertleft" or (errorHandler.buildDepError "monoid-insertleft"))
          (hsPkgs."uniqueness-periods-vector-stats" or (errorHandler.buildDepError "uniqueness-periods-vector-stats"))
          ];
        buildable = true;
        };
      };
    }