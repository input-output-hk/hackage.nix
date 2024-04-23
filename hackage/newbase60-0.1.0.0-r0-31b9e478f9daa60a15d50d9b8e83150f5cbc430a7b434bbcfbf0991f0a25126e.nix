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
      identifier = { name = "newbase60"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "Astrid Yu";
      maintainer = "astrid@astrid.tech";
      author = "Astrid Yu";
      homepage = "https://github.com/astralbijection/newbase60-hs#readme";
      url = "";
      synopsis = "Encodes and decodes numbers using Tantek Çelik's New Base 60 number system.";
      description = "Please see the README on GitHub at <https://github.com/astralbijection/newbase60-hs#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "newbase60-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."newbase60" or (errorHandler.buildDepError "newbase60"))
          ];
          buildable = true;
        };
      };
    };
  }