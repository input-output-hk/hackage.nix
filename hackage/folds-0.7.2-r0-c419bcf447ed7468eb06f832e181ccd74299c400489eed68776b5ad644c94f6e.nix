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
    flags = { test-doctests = true; test-hlint = true; optimize = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "folds"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2009-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/folds";
      url = "";
      synopsis = "Beautiful Folding";
      description = "This package is a playground full of comonadic folds.\n\nThis style of fold is documented in <https://www.fpcomplete.com/user/edwardk/cellular-automata/part-2 \"Cellular Automata, Part II: PNGs and Moore\">\n\nThis package can be seen as what happens if you chase Max Rabkin's <http://squing.blogspot.com/2008/11/beautiful-folding.html \"Beautiful Folding\"> to its logical conclusion.\n\nMore information on this approach can be found in the <http://conal.net/blog/posts/another-lovely-example-of-type-class-morphisms \"Another lovely example of type class morphisms\"> and <http://conal.net/blog/posts/more-beautiful-fold-zipping \"More beautiful fold zipping\"> posts by Conal Elliott, as well as in Gabriel Gonzales' <http://www.haskellforall.com/2013/08/composable-streaming-folds.html \"Composable Streaming Folds\">";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pointed" or (errorHandler.buildDepError "pointed"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.11") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      tests = {
        "hlint" = {
          depends = pkgs.lib.optionals (!!flags.test-hlint) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = if !flags.test-hlint then false else true;
        };
        "doctests" = {
          depends = pkgs.lib.optionals (!!flags.test-doctests) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
          buildable = if !flags.test-doctests then false else true;
        };
      };
    };
  }