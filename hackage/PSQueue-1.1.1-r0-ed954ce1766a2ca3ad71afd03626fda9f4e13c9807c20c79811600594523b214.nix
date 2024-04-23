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
      specVersion = "2.0";
      identifier = { name = "PSQueue"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Teo Camarasu <teofilcamarasu@gmail.com>";
      author = "Ralf Hinze";
      homepage = "";
      url = "";
      synopsis = "Priority Search Queue";
      description = "A /priority search queue/ efficiently supports the\nopperations of both a search tree and a priority queue. A\n'Binding' is a product of a key and a priority.  Bindings\ncan be inserted, deleted, modified and queried in\nlogarithmic time, and the binding with the least priority\ncan be retrieved in constant time.  A queue can be built\nfrom a list of bindings, sorted by keys, in linear time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."PSQueue" or (errorHandler.buildDepError "PSQueue"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }