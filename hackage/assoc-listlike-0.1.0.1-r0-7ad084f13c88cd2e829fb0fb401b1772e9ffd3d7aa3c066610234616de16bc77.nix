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
      identifier = { name = "assoc-listlike"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2018-2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/assoc-list";
      url = "";
      synopsis = "Association lists (list-like collections of tuples)";
      description = "An association list conceptually signifies a mapping,\nbut is represented as a list (of key-value pairs).\n\nThis package defines an association list as a constraint\nsynonym for a list-like collection of tuples, using the\n@ListLike@ type class from the @ListLike@ package.\n\n> type AssocList l a b = ListLike l (a, b)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
        ];
        buildable = true;
      };
      tests = {
        "hedgehog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
            (hsPkgs."assoc-listlike" or (errorHandler.buildDepError "assoc-listlike"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }