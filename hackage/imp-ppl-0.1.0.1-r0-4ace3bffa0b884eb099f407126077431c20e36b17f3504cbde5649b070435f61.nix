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
    flags = { dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "imp-ppl"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2026 Jack Liell-Cock";
      maintainer = "Jack Liell-Cock <jackliellcock@gmail.com>";
      author = "Jack Liell-Cock <jackliellcock@gmail.com>";
      homepage = "https://github.com/jacklc3/imp";
      url = "";
      synopsis = "Imprecise probabilistic programming via BDDs";
      description = "A DSL for discrete probabilistic programs with Knightian uncertainty,\nwhere some probabilities are not precisely known. Programs compile to\nbinary decision diagrams, and inference computes credal sets,\nand lower and upper probabilities via semiring-parametric weighted\nmodel counting.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "viz" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imp-ppl" or (errorHandler.buildDepError "imp-ppl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = if !flags.dev then false else true;
        };
        "bench-robot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imp-ppl" or (errorHandler.buildDepError "imp-ppl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if !flags.dev then false else true;
        };
        "bench-ellsberg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imp-ppl" or (errorHandler.buildDepError "imp-ppl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if !flags.dev then false else true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imp-ppl" or (errorHandler.buildDepError "imp-ppl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }