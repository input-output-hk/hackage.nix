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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "monad-control"; version = "1.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Bas van Dijk, Anders Kaseorg";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk, Anders Kaseorg";
      homepage = "https://github.com/basvandijk/monad-control";
      url = "";
      synopsis = "Lift control operations, like exception catching, through monad transformers";
      description = "This package defines the type class @MonadBaseControl@, a subset of\n@MonadBase@ into which generic control operations such as @catch@ can be\nlifted from @IO@ or any other base monad. Instances are based on monad\ntransformers in @MonadTransControl@, which includes all standard monad\ntransformers in the @transformers@ library except @ContT@.\n\nSee the @lifted-base@ package which uses @monad-control@ to lift @IO@\noperations from the @base@ library (like @catch@ or @bracket@) into any monad\nthat is an instance of @MonadBase@ or @MonadBaseControl@.\n\nNote that this package is a rewrite of Anders Kaseorg's @monad-peel@\nlibrary. The main difference is that this package provides CPS style operators\nand exploits the @RankNTypes@ and @TypeFamilies@ language extensions to\nsimplify and speedup most definitions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          ];
        };
      };
    }