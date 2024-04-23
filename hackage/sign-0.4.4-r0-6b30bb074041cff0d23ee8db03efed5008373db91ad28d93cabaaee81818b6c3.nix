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
    flags = { lattices14 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sign"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Arithmetic over signs and sets of signs";
      description = "Arithmetic over signs (i.e. -, 0, +) and sets of signs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ] ++ (if flags.lattices14
          then [
            (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
            (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
          ]
          else [
            (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
          ]);
        buildable = true;
      };
      tests = {
        "TestSign" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."lattices" or (errorHandler.buildDepError "lattices"))
            (hsPkgs."sign" or (errorHandler.buildDepError "sign"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ pkgs.lib.optional (flags.lattices14) (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"));
          buildable = true;
        };
      };
    };
  }