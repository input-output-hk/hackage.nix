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
    flags = { buildreadme = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "focuslist"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell and Grendel-Grendel-Grendel";
      homepage = "https://github.com/cdepillabout/focuslist";
      url = "";
      synopsis = "Lists with a focused element";
      description = "Please see <https://github.com/cdepillabout/focuslist#readme README.md>.";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      exes = {
        "focuslist-readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."focuslist" or (errorHandler.buildDepError "focuslist"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            ];
          buildable = if flags.buildreadme then true else false;
          };
        };
      tests = {
        "focuslist-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "focuslist-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."focuslist" or (errorHandler.buildDepError "focuslist"))
            (hsPkgs."genvalidity-containers" or (errorHandler.buildDepError "genvalidity-containers"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            ];
          buildable = true;
          };
        };
      };
    }