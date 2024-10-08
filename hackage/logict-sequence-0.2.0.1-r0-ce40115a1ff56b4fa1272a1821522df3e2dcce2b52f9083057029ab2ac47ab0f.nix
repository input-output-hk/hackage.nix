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
      identifier = { name = "logict-sequence"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "(c) 2021 Jason Dagit,\n(c) 2014 Atze van der Ploeg";
      maintainer = "Jason Dagit <dagitj@gmail.com>";
      author = "Jason Dagit";
      homepage = "https://github.com/dagit/logict-sequence";
      url = "";
      synopsis = "A backtracking logic-programming monad with asymptotic improvements to msplit";
      description = "Adapted from the paper\n<http://okmij.org/ftp/Haskell/zseq.pdf>\nby Atze van der Ploeg and Oleg Kiselyov";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."sequence" or (errorHandler.buildDepError "sequence"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."fail" or (errorHandler.buildDepError "fail"));
        buildable = true;
      };
      tests = {
        "logict-test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logict-sequence" or (errorHandler.buildDepError "logict-sequence"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."hedgehog-fn" or (errorHandler.buildDepError "hedgehog-fn"))
            (hsPkgs."sequence" or (errorHandler.buildDepError "sequence"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.eq "8.4.4") (hsPkgs."vector-builder" or (errorHandler.buildDepError "vector-builder"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.eq "8.2.2") (hsPkgs."vector-builder" or (errorHandler.buildDepError "vector-builder"));
          buildable = if compiler.isGhc && compiler.version.lt "8"
            then false
            else true;
        };
        "do-nothing" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
      benchmarks = {
        "logic-performance" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."logict-sequence" or (errorHandler.buildDepError "logict-sequence"))
          ];
          buildable = if compiler.isGhc && compiler.version.lt "8.0.2"
            then false
            else true;
        };
      };
    };
  }