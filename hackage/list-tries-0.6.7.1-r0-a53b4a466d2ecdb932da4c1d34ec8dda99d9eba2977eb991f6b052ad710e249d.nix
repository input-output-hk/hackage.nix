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
      specVersion = "3.0";
      identifier = { name = "list-tries"; version = "0.6.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>";
      author = "Matti Niemenmaa";
      homepage = "http://iki.fi/matti.niemenmaa/list-tries/";
      url = "";
      synopsis = "Tries and Patricia tries: finite sets and maps for list keys";
      description = "This library provides implementations of finite sets and maps for list keys\nusing tries, both simple and of the Patricia kind. In most (or all? sorry,\nhaven't benchmarked yet) cases, the Patricia tries will have better\nperformance, so use them unless you have reasons not to.\n.\nThe data types are parametrized over the map type they use internally to\nstore the child nodes: this allows extending them to support different kinds\nof key types or increasing efficiency. Child maps are required to be\ninstances of the Map class in Data.ListTrie.Base.Map. Some operations\nadditionally require an OrdMap instance.\n.\nThe Eq, Ord, and Enum modules contain ready structures for key types which\nare instances of those classes, using lists of pairs, Data.Map, and\nData.IntMap respectively.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
        ];
        buildable = true;
      };
      tests = {
        "list-tries-tests" = {
          depends = [
            (hsPkgs."list-tries" or (errorHandler.buildDepError "list-tries"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."ChasingBottoms" or (errorHandler.buildDepError "ChasingBottoms"))
          ];
          buildable = true;
        };
      };
    };
  }