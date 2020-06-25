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
      identifier = { name = "nom"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Murdoch J. Gabbay";
      maintainer = "murdoch.gabbay@gmail.com";
      author = "Murdoch J. Gabbay";
      homepage = "https://github.com/bellissimogiorno/nominal#readme";
      url = "";
      synopsis = "Name-binding & alpha-equivalence";
      description = "Nominal-flavoured implementation of data in a context of local names, following the ideas in <https://link.springer.com/article/10.1007/s001650200016 a new approach to abstract syntax with variable binding> (see also <http://www.gabbay.org.uk/papers.html#newaas-jv author's pdfs>).\n__The recommended landing page is \"Language.Nominal\", so please go there first.__ See also: a tutorial in \"Language.Nominal.Examples.Tutorial\"; a short development of untyped lambda-calculus in \"Language.Nominal.Examples.UntypedLambda\"; an example development of System F in \"Language.Nominal.Examples.SystemF\"; and an example development of an EUTxO-style blockchain in \"Language.Nominal.Examples.IdealisedEUTxO\".";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (errorHandler.buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."Unique" or (errorHandler.buildDepError "Unique"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."algebra" or (errorHandler.buildDepError "algebra"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
          ];
        buildable = true;
        };
      tests = {
        "nom-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."nom" or (errorHandler.buildDepError "nom"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        "nom-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."nom" or (errorHandler.buildDepError "nom"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }