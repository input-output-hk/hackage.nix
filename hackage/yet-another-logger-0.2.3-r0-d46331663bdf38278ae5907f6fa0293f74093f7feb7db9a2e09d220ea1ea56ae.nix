{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "yet-another-logger"; version = "0.2.3"; };
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
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."configuration-tools" or ((hsPkgs.pkgs-errors).buildDepError "configuration-tools"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."enclosed-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "enclosed-exceptions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."trace" or ((hsPkgs.pkgs-errors).buildDepError "trace"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.9")) (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"));
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."yet-another-logger" or ((hsPkgs.pkgs-errors).buildDepError "yet-another-logger"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
            (hsPkgs."configuration-tools" or ((hsPkgs.pkgs-errors).buildDepError "configuration-tools"))
            (hsPkgs."enclosed-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "enclosed-exceptions"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
            (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
            (hsPkgs."yet-another-logger" or ((hsPkgs.pkgs-errors).buildDepError "yet-another-logger"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.9")) (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"));
          buildable = true;
          };
        };
      };
    }