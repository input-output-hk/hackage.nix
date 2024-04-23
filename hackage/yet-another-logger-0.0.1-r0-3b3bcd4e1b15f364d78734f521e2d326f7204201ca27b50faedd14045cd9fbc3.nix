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
      specVersion = "1.18";
      identifier = { name = "yet-another-logger"; version = "0.0.1"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2014-2015 PivotCloud, Inc.";
      maintainer = "Lars Kuhtz <lkuhtz@pivotmail.com>";
      author = "Lars Kuhtz <lkuhtz@pivotmail.com>";
      homepage = "https://github.com/alephcloud/hs-yet-another-logger";
      url = "";
      synopsis = "Yet Another Logger";
      description = "A logging framework written with flexibility and performance\nin mind.\n\n= Quick Start\n\n> import System.Logger\n>\n> main ∷ IO ()\n> main = withConsoleLogger Info $ do\n>     logg Info \"moin\"\n>     withLabel (\"function\", \"f\") f\n>     logg Warn \"tschüss\"\n>   where\n>     f = withLevel Debug $ do\n>         logg Debug \"debug f\"\n\n= Description\n\n/This Version is yet a preview/\n\nThe logging system consists of four main parts:\n\n1. The logging front-end are those types and functions that are used\nto produce log messages in the code. This includes the 'LogLevel'\ntype, the 'LogPolicy' type, the 'LogLabel' and 'LogScope' types,\nthe 'LogFunction' type, and the 'MonadLog' type class.\n\n2. The abstract 'LoggerCtx' is the context through which the 'LogFunction'\ndelivers log messages to the logger back-end.\n\n3. The formatter is a function for serializing log messages.\n\n4. The logger back-end is a callback that is invoked by 'Logger' on\neach log messages. The logger back-end applies the formatting function\nand delivers the log messages to some sink.\n\nThe framework allows to combine this components in a modular way. The\nfront-end types, the 'Logger', and the back-end callback are represented\nby types or type classes. The formatter exists only as a concept\nin the implementation of back-ends. These types and concepts together\nform the abstract logger interface that is defined in the module\n\"System.Logger.Types\".\n\nThe package also provides a concrete Logger that implements these components\nin the module \"System.Logger.Logger\" and \"System.Logger.Backend.Handle\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."configuration-tools" or (errorHandler.buildDepError "configuration-tools"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."enclosed-exceptions" or (errorHandler.buildDepError "enclosed-exceptions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."trace" or (errorHandler.buildDepError "trace"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ];
        buildable = true;
      };
    };
  }