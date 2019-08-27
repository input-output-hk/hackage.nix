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
      specVersion = "1.18";
      identifier = { name = "yet-another-logger"; version = "0.2.3.1"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2014-2015 PivotCloud, Inc.";
      maintainer = "Lars Kuhtz <lkuhtz@pivotmail.com>";
      author = "Lars Kuhtz <lkuhtz@pivotmail.com>";
      homepage = "https://github.com/alephcloud/hs-yet-another-logger";
      url = "";
      synopsis = "Yet Another Logger";
      description = "A logging framework written with flexibility and performance\nin mind.\n\n= Quick Start\n\n> import System.Logger\n>\n> main ∷ IO ()\n> main = withConsoleLogger Info \$ do\n>     logg Info \"moin\"\n>     withLabel (\"function\", \"f\") f\n>     logg Warn \"tschüss\"\n>   where\n>     f = withLevel Debug \$ do\n>         logg Debug \"debug f\"\n\n= Description\n\n/This Version is yet a preview/\n\nThe logging system consists of four main parts:\n\n1. The logging front-end are those types and functions that are used\nto produce log messages in the code. This includes the 'LogLevel'\ntype, the 'LogPolicy' type, the 'LogLabel' and 'LogScope' types,\nthe 'LogFunction' type, and the 'MonadLog' type class.\n\n2. The abstract 'LoggerCtx' is the context through which the 'LogFunction'\ndelivers log messages to the logger back-end.\n\n3. The formatter is a function for serializing log messages.\n\n4. The logger back-end is a callback that is invoked by 'Logger' on\neach log messages. The logger back-end applies the formatting function\nand delivers the log messages to some sink.\n\nThe framework allows to combine this components in a modular way. The\nfront-end types, the 'Logger', and the back-end callback are represented\nby types or type classes. The formatter exists only as a concept\nin the implementation of back-ends. These types and concepts together\nform the abstract logger interface that is defined in the module\n\"System.Logger.Types\".\n\nThe package also provides a concrete Logger that implements these components\nin the module \"System.Logger.Logger\" and \"System.Logger.Backend.Handle\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."configuration-tools" or (buildDepError "configuration-tools"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."enclosed-exceptions" or (buildDepError "enclosed-exceptions"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."trace" or (buildDepError "trace"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."void" or (buildDepError "void"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.9")) (hsPkgs."nats" or (buildDepError "nats"));
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."yet-another-logger" or (buildDepError "yet-another-logger"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."configuration-tools" or (buildDepError "configuration-tools"))
            (hsPkgs."enclosed-exceptions" or (buildDepError "enclosed-exceptions"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."yet-another-logger" or (buildDepError "yet-another-logger"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.9")) (hsPkgs."nats" or (buildDepError "nats"));
          };
        };
      };
    }