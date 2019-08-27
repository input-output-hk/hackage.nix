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
    flags = { test = false; hpc = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "monad-control"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Bas van Dijk, Anders Kaseorg";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk, Anders Kaseorg";
      homepage = "";
      url = "";
      synopsis = "Lift control operations, like exception catching, through monad transformers";
      description = "This package defines the type class @MonadControlIO@, a subset of\n@MonadIO@ into which generic control operations such as @catch@ can\nbe lifted from @IO@.  Instances are based on monad transformers in\n@MonadTransControl@, which includes all standard monad transformers\nin the @transformers@ library except @ContT@.  For convenience, it\nprovides a wrapped version of @Control.Exception@ with types\ngeneralized from @IO@ to all monads in @MonadControlIO@.\n\nNote that this package is a rewrite of Anders Kaseorg's @monad-peel@ library.\nThe main difference is that this package provides CPS style\noperators and exploits the @RankNTypes@ language extension to\nsimplify most definitions.\n\nThe package includes a copy of the @monad-peel@ testsuite written by Anders Kaseorg.\nThe tests can be performed by using @cabal test@.\n\nThe following @critertion@ based benchmark shows that @monad-control@\nis on average about 2.5 times faster than @monad-peel@:\n\n<http://code.haskell.org/~basvandijk/code/bench-monad-peel-control>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "test-monad-control" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            ];
          };
        };
      };
    }