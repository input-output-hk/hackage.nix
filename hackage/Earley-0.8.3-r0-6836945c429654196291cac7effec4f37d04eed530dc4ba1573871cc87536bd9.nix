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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Earley"; version = "0.8.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 Olle Fredriksson";
      maintainer = "fredriksson.olle@gmail.com";
      author = "Olle Fredriksson";
      homepage = "";
      url = "";
      synopsis = "Parsing all context-free grammars using Earley's algorithm.";
      description = "See <https://www.github.com/ollef/Earley> for more\ninformation and\n<https://github.com/ollef/Earley/tree/master/examples> for\nexamples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          ];
        buildable = true;
        };
      exes = {
        "earley-english" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-expr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-expr2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-mixfix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-very-ambiguous" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-words" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
            ];
          buildable = true;
          };
        };
      };
    }