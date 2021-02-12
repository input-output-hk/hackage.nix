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
    flags = { shelltest = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "ghc-mod"; version = "5.8.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Daniel Gröber <dxld@darkboxed.org>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>,\nDaniel Gröber <dxld@darkboxed.org>,\nAlejandro Serrano <trupill@gmail.com>,\nNikolay Yakimov <root@livid.pp.ru>";
      homepage = "https://github.com/DanielG/ghc-mod";
      url = "";
      synopsis = "Happy Haskell Hacking";
      description = "ghc-mod is a backend program to enrich Haskell programming in editors. It\nstrives to offer most of the features one has come to expect from modern IDEs\nin any editor.\nghc-mod provides a library for other haskell programs to use as well as a\nstandalone program for easy editor integration. All of the fundamental\nfunctionality of the frontend program can be accessed through the library\nhowever many implementation details are hidden and if you want to\nsignificantly extend ghc-mod you should submit these changes upstream instead\nof implementing them on top of the library.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (errorHandler.setupDepError "containers")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (errorHandler.setupDepError "process")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or (errorHandler.setupDepError "template-haskell")))
        (hsPkgs.buildPackages.transformers or (pkgs.buildPackages.transformers or (errorHandler.setupDepError "transformers")))
        ];
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."djinn-ghc" or (errorHandler.buildDepError "djinn-ghc"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-journal" or (errorHandler.buildDepError "monad-journal"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."cabal-helper" or (errorHandler.buildDepError "cabal-helper"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0") (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"));
        buildable = true;
        };
      exes = {
        "ghc-mod" = {
          depends = [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            ];
          buildable = true;
          };
        "ghc-modi" = {
          depends = [
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
          depends = ([
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monad-journal" or (errorHandler.buildDepError "monad-journal"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."cabal-helper" or (errorHandler.buildDepError "cabal-helper"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0") (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"));
          buildable = true;
          };
        "shelltest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.shelltest.components.exes.shelltest or (pkgs.buildPackages.shelltest or (errorHandler.buildToolDepError "shelltest:shelltest")))
            ];
          buildable = if !flags.shelltest then false else true;
          };
        };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            ];
          buildable = true;
          };
        };
      };
    }