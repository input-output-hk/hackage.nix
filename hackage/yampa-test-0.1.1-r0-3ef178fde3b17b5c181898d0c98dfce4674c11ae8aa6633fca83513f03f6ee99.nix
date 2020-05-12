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
      identifier = { name = "yampa-test"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://github.com/ivanperez-keera/Yampa";
      url = "";
      synopsis = "Testing library for Yampa.";
      description = "Testing library for Yampa.\n\nThis library contains several testing and debugging facilities for Yampa.\nIn particular, it contains:\n\n* Debugging signal functions using \"Debug.Trace\".\n* A definition of Temporal Predicates based on LTL.\n* Monitoring signal functions with ptLTL using Signal Predicates.\n* A definition of Streams, and a Stream manipulation API.\n* Signal/stream generators for QuickCheck.\n\nA detailed explanation of these ideas is included in the ICFP 2017 paper\n<https://dl.acm.org/citation.cfm?id=3110246 Testing and Debugging Functional Reactive Programming>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
          ];
        buildable = true;
        };
      tests = {
        "yampa-quicheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            (hsPkgs."yampa-test" or (errorHandler.buildDepError "yampa-test"))
            (hsPkgs."cabal-test-quickcheck" or (errorHandler.buildDepError "cabal-test-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }