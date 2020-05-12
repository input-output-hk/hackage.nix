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
      identifier = { name = "kicad-data"; version = "0.5.0"; };
      license = "MIT";
      copyright = "2018";
      maintainer = "kaspar@monostable.co.uk";
      author = "Kaspar Emanuel";
      homepage = "http://github.com/kasbah/haskell-kicad-data";
      url = "";
      synopsis = "Parser and writer for KiCad files.";
      description = "Parse and write <http://kicad-pcb.org/ KiCad> data\n(currently @.kicad_mod@ files only).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
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
            (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
            (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."pretty-compact" or (errorHandler.buildDepError "pretty-compact"))
            (hsPkgs."charsetdetect" or (errorHandler.buildDepError "charsetdetect"))
            (hsPkgs."encoding" or (errorHandler.buildDepError "encoding"))
            (hsPkgs."kicad-data" or (errorHandler.buildDepError "kicad-data"))
            ];
          buildable = true;
          };
        };
      };
    }