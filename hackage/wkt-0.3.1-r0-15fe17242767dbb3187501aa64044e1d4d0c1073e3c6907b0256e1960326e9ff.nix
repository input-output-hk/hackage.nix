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
      identifier = { name = "wkt"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "bgamari.foss@gmail.com";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/wkt";
      url = "";
      synopsis = "Parsec parsers and types for geographic data in well-known text (WKT) format.";
      description = "Parsec parsers and types for geographic metadata in the well-known\ntext (WKT) format <https://en.wikipedia.org/wiki/Well-known_text>.\nWKT can be used to specify spatial reference systems and primitive\ngeometry in spatial datasets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."wkt" or (errorHandler.buildDepError "wkt"))
            ];
          buildable = true;
          };
        };
      };
    }