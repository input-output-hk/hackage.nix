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
      specVersion = "2.2";
      identifier = { name = "finitary-optics"; version = "1.0.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(C) Koz Ross 2019";
      maintainer = "koz.ross@retro-freedom.nz";
      author = "Koz Ross";
      homepage = "https://notabug.org/koz.ross/finitary-optics";
      url = "";
      synopsis = "Prisms and Isos between finitary types.";
      description = "Provides convenience optics for working with finitary types.\nSpecifically gives an Iso for inter-converting between types\nof the same cardinality, and a Prism for inter-converting\nbetween types of different cardinalities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."finitary" or (errorHandler.buildDepError "finitary"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."finitary-optics" or (errorHandler.buildDepError "finitary-optics"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          ];
          buildable = true;
        };
      };
    };
  }