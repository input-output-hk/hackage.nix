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
      specVersion = "1.14";
      identifier = { name = "ghc-mod"; version = "5.6.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Daniel Gröber <dxld@darkboxed.org>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>,\nDaniel Gröber <dxld@darkboxed.org>,\nAlejandro Serrano <trupill@gmail.com>,\nNikolay Yakimov <root@livid.pp.ru>";
      homepage = "http://www.mew.org/~kazu/proj/ghc-mod/";
      url = "";
      synopsis = "Happy Haskell Programming";
      description = "ghc-mod is a backend program to enrich Haskell programming in editors. It\nstrives to offer most of the features one has come to expect from modern IDEs\nin any editor.\nghc-mod provides a library for other haskell programs to use as well as a\nstandalone program for easy editor integration. All of the fundamental\nfunctionality of the frontend program can be accessed through the library\nhowever many implementation details are hidden and if you want to\nsignificantly extend ghc-mod you should submit these changes upstream instead\nof implementing them on top of the library.\nFor more information, please see its home page.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (errorHandler.buildToolDepError "containers")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.buildToolDepError "process")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or (errorHandler.buildToolDepError "template-haskell")))
        (hsPkgs.buildPackages.transformers or (pkgs.buildPackages.transformers or (errorHandler.buildToolDepError "transformers")))
        ];
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cabal-helper" or (errorHandler.buildDepError "cabal-helper"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
          (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          (hsPkgs."monad-journal" or (errorHandler.buildDepError "monad-journal"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."djinn-ghc" or (errorHandler.buildDepError "djinn-ghc"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0") (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"));
        buildable = true;
        };
      exes = {
        "ghc-mod" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            ];
          buildable = true;
          };
        "ghc-modi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }