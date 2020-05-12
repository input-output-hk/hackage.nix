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
      identifier = { name = "kicad-data"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2014";
      maintainer = "kaspar.emanuel@gmail.com";
      author = "Kaspar Emanuel";
      homepage = "http://github.com/kasbah/haskell-kicad-data";
      url = "";
      synopsis = "Parser and writer for KiCad files.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."parsec-numbers" or (errorHandler.buildDepError "parsec-numbers"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
          (hsPkgs."pretty-compact" or (errorHandler.buildDepError "pretty-compact"))
          ];
        buildable = true;
        };
      tests = {
        "kicad-data-quickcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."parsec-numbers" or (errorHandler.buildDepError "parsec-numbers"))
            (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
            (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."pretty-compact" or (errorHandler.buildDepError "pretty-compact"))
            (hsPkgs."kicad-data" or (errorHandler.buildDepError "kicad-data"))
            ];
          buildable = true;
          };
        };
      };
    }