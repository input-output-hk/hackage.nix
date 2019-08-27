let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (buildToolDepError "containers")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        (hsPkgs.buildPackages.template-haskell or (pkgs.buildPackages.template-haskell or (buildToolDepError "template-haskell")))
        (hsPkgs.buildPackages.transformers or (pkgs.buildPackages.transformers or (buildToolDepError "transformers")))
        ];
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."djinn-ghc" or (buildDepError "djinn-ghc"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."ghc-syb-utils" or (buildDepError "ghc-syb-utils"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          (hsPkgs."hlint" or (buildDepError "hlint"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monad-journal" or (buildDepError "monad-journal"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."cabal-helper" or (buildDepError "cabal-helper"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0") (hsPkgs."ghc-boot" or (buildDepError "ghc-boot"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."convertible" or (buildDepError "convertible"));
        };
      exes = {
        "ghc-mod" = {
          depends = [
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-mod" or (buildDepError "ghc-mod"))
            ];
          };
        "ghc-modi" = {
          depends = [
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc-mod" or (buildDepError "ghc-mod"))
            ];
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "spec" = {
          depends = ([
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."monad-journal" or (buildDepError "monad-journal"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."cabal-helper" or (buildDepError "cabal-helper"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-mod" or (buildDepError "ghc-mod"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."convertible" or (buildDepError "convertible"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0") (hsPkgs."ghc-boot" or (buildDepError "ghc-boot"));
          };
        "shelltest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.shelltest or (pkgs.buildPackages.shelltest or (buildToolDepError "shelltest")))
            ];
          };
        };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."ghc-mod" or (buildDepError "ghc-mod"))
            ];
          };
        };
      };
    }