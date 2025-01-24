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
      specVersion = "2.4";
      identifier = { name = "disco"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Disco team 2016-2022 (see LICENSE)";
      maintainer = "byorgey@gmail.com";
      author = "Disco team";
      homepage = "";
      url = "";
      synopsis = "Functional programming language for teaching discrete math.";
      description = "Disco is a simple functional programming language for use in\nteaching discrete math.  Its syntax is designed to be close\nto standard mathematical practice.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unbound-generics" or (errorHandler.buildDepError "unbound-generics"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."exact-combinatorics" or (errorHandler.buildDepError "exact-combinatorics"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
          (hsPkgs."simple-enumeration" or (errorHandler.buildDepError "simple-enumeration"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."oeis2" or (errorHandler.buildDepError "oeis2"))
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
        ];
        buildable = true;
      };
      exes = {
        "disco" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."disco" or (errorHandler.buildDepError "disco"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unbound-generics" or (errorHandler.buildDepError "unbound-generics"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."oeis2" or (errorHandler.buildDepError "oeis2"))
          ];
          buildable = true;
        };
      };
      tests = {
        "disco-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."disco" or (errorHandler.buildDepError "disco"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.disco.components.exes.disco or (pkgs.pkgsBuildBuild.disco or (errorHandler.buildToolDepError "disco:disco")))
          ];
          buildable = true;
        };
        "disco-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.disco.components.exes.disco or (pkgs.pkgsBuildBuild.disco or (errorHandler.buildToolDepError "disco:disco")))
          ];
          buildable = true;
        };
      };
    };
  }