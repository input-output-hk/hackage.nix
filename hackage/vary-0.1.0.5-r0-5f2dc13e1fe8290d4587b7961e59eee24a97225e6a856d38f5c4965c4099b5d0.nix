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
    flags = { aeson = true; hashable = true; quickcheck = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "vary"; version = "0.1.0.5"; };
      license = "MIT";
      copyright = "2024 Marten Wijnja (Qqwy)";
      maintainer = "qqwy@gmx.com";
      author = "Marten Wijnja (Qqwy)";
      homepage = "https://github.com/qqwy/haskell-vary#readme";
      url = "";
      synopsis = "Vary: Friendly and fast polymorphic variants (open unions/coproducts/extensible sums)";
      description = "Vary: Friendly and fast Variant types for Haskell\n\nJust like tuples are a version of a user-defined product type (only without the field names), a Variant is a version of a user-defined sum type (but without the field names).\n\nVariant types are the generalization of `Either`. Especially in the situation where you want to handle multiple errors, Variant types are a great abstraction to use.\n\nVariant types are sometimes called '_polymorphic_ variants' for disambiguation. They are also commonly known as (open) unions, coproducts or extensible sums.\n\nVary is lightweight on dependencies. With all library flags turned off, it only depends on `base` and `deepseq`.\n\nPlease see the full README below or on GitHub at <https://github.com/qqwy/haskell-vary#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ pkgs.lib.optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
            (hsPkgs."vary" or (errorHandler.buildDepError "vary"))
          ] ++ pkgs.lib.optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ pkgs.lib.optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
          buildable = true;
        };
        "readme" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            (hsPkgs."vary" or (errorHandler.buildDepError "vary"))
          ] ++ pkgs.lib.optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ pkgs.lib.optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = true;
        };
        "vary-test" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vary" or (errorHandler.buildDepError "vary"))
          ] ++ pkgs.lib.optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ pkgs.lib.optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
          buildable = true;
        };
      };
    };
  }