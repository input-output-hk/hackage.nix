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
      identifier = { name = "relational-query-HDBC"; version = "0.6.4.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2017 Kei Hibino, Shohei Murayama, Shohei Yasutake, Sho KURODA";
      maintainer = "ex8k.hibino@gmail.com, shohei.murayama@gmail.com, amutake.s@gmail.com, krdlab@gmail.com";
      author = "Kei Hibino, Shohei Murayama, Shohei Yasutake, Sho KURODA";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "HDBC instance of relational-query and typed query interface for HDBC";
      description = "This package contains the HDBC instance of relational-query and\nthe typed query interface for HDBC.\nGenerating Database table definitions and functions for\nrelational-query by reading table and index definitions\nfrom Database system catalogs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."th-data-compat" or (errorHandler.buildDepError "th-data-compat"))
          (hsPkgs."names-th" or (errorHandler.buildDepError "names-th"))
          (hsPkgs."persistable-record" or (errorHandler.buildDepError "persistable-record"))
          (hsPkgs."relational-query" or (errorHandler.buildDepError "relational-query"))
          (hsPkgs."relational-schemas" or (errorHandler.buildDepError "relational-schemas"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-session" or (errorHandler.buildDepError "HDBC-session"))
          ];
        buildable = true;
        };
      tests = {
        "convertible-iso" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-simple" or (errorHandler.buildDepError "quickcheck-simple"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."relational-query-HDBC" or (errorHandler.buildDepError "relational-query-HDBC"))
            ];
          buildable = true;
          };
        };
      };
    }