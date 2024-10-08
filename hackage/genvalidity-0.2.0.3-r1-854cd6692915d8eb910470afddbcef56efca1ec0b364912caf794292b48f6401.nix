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
      identifier = { name = "genvalidity"; version = "0.2.0.3"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Testing utilities for the validity library";
      description = "Note: There are companion instance packages for this library:\n\n* <https://hackage.haskell.org/package/genvalidity-text genvalidity-text>\n\n* <https://hackage.haskell.org/package/genvalidity-containers genvalidity-containers>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "genvalidity-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          ];
          buildable = true;
        };
      };
    };
  }