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
    flags = { debug-sched = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "stc-lang"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Norman Rink, Sebastian Ertel, Justus Adam";
      maintainer = "justus.adam@tu-dresden.de";
      author = "Norman Rink, Sebastian Ertel, Justus Adam";
      homepage = "https://github.com/ohua-dev/stc-lang#readme";
      url = "";
      synopsis = "A library for implicit, monadic dataflow parallelism";
      description = "See the <https://github.com/ohua-dev/stc-lang#readme readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."BoundedChan" or (errorHandler.buildDepError "BoundedChan"))
          (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          (hsPkgs."monad-par-extras" or (errorHandler.buildDepError "monad-par-extras"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "ohua-stream-bench" = {
          depends = [
            (hsPkgs."BoundedChan" or (errorHandler.buildDepError "BoundedChan"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
            (hsPkgs."hw-kafka-client" or (errorHandler.buildDepError "hw-kafka-client"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-aeson" or (errorHandler.buildDepError "microlens-aeson"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."stc-lang" or (errorHandler.buildDepError "stc-lang"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "statefulness-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stc-lang" or (errorHandler.buildDepError "stc-lang"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }