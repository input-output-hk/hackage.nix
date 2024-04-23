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
      specVersion = "3.0";
      identifier = { name = "loc"; version = "0.1.4.1"; };
      license = "Apache-2.0";
      copyright = "2017 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/loc";
      url = "";
      synopsis = "Line and column positions and ranges in text files";
      description = "The package name /loc/ stands for “location” and is\nalso an allusion to the acronym for “lines of code”.\n\nThe @Loc@ type represents a caret position in a text file,\nthe @Span@ type is a nonempty range between two @Loc@s,\nand the @Area@ type is a set of non-touching @Span@s.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "test-loc-properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."loc" or (errorHandler.buildDepError "loc"))
          ];
          buildable = true;
        };
      };
    };
  }