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
      identifier = { name = "vector-rotcev"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019-2021 Andrew Lelechenko";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/rotcev";
      url = "";
      synopsis = "Vectors with O(1) reverse";
      description = "A wrapper for an arbitrary @Vector@ with O(1) @reverse@.\nInstead of creating a copy, it just flips a flag, which inverts indexing.\nImagine it as a vector with a switch between little-endianness and big-endianness.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "rotcev-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector-rotcev" or (errorHandler.buildDepError "vector-rotcev"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }