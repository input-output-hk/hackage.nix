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
      identifier = { name = "raw-feldspar"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Anders Persson, Anton Ekblad, Emil Axelsson,\nKoen Claessen, Markus Aronsson, Máté Karácsony\nCopyright (c) 2015 Emil Axelsson";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "https://github.com/Feldspar/raw-feldspar";
      url = "";
      synopsis = "Resource-Aware Feldspar";
      description = "An implementation of the Feldspar EDSL with focus on\nresource-awareness.\n\nExamples can be found in the @examples/@ directory. The\nfiles named \"TutN_...\" can be studied as a tutorial (to be\nread in ascending order).\n\nFor more information, see the README:\n<https://github.com/Feldspar/raw-feldspar/blob/master/README.md>\n\nTo see which GHC versions RAW-Feldspar can be built with,\nconsult the Travis status page:\n<https://travis-ci.org/Feldspar/raw-feldspar>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."data-hash" or (errorHandler.buildDepError "data-hash"))
          (hsPkgs."imperative-edsl" or (errorHandler.buildDepError "imperative-edsl"))
          (hsPkgs."language-c-quote" or (errorHandler.buildDepError "language-c-quote"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."operational-alacarte" or (errorHandler.buildDepError "operational-alacarte"))
          (hsPkgs."prelude-edsl" or (errorHandler.buildDepError "prelude-edsl"))
          (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "NumSimpl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."raw-feldspar" or (errorHandler.buildDepError "raw-feldspar"))
            (hsPkgs."syntactic" or (errorHandler.buildDepError "syntactic"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            ];
          buildable = true;
          };
        "Compilation" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."raw-feldspar" or (errorHandler.buildDepError "raw-feldspar"))
            ];
          buildable = true;
          };
        "Semantics" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."raw-feldspar" or (errorHandler.buildDepError "raw-feldspar"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            ];
          buildable = true;
          };
        "Examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."raw-feldspar" or (errorHandler.buildDepError "raw-feldspar"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }