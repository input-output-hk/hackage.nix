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
      identifier = { name = "dequeue"; version = "0.1.11"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2015 Henry Bucklow";
      maintainer = "Henry Bucklow <henry@elsie.org.uk>";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "A typeclass and an implementation for double-ended queues.";
      description = "A typeclass for double-ended queues, and an implementation of Banker's\nDequeues, as described in Chris Okasaki's Purely Functional Data\nStructures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "dequeue-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dequeue" or (errorHandler.buildDepError "dequeue"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-test-quickcheck" or (errorHandler.buildDepError "cabal-test-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }