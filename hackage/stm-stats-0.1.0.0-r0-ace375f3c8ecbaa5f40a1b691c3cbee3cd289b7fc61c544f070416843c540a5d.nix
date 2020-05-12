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
      specVersion = "1.6";
      identifier = { name = "stm-stats"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "David Leuschner <leuschner@factisresearch.com>,\nJoachim Breitner <mail@joachim-breitner.de>";
      homepage = "";
      url = "";
      synopsis = "retry statistics for STM transactions";
      description = "This module provides functions that can replace calls to\n'atomically' and count how often the transaction was retried\nuntil it succeeded. It can emit warnings when transaction are\nretried more often than a given threshold, and provides global\nstatistics across all transaction.\n\nAs an additional feature, if the transaction was named,\ntransaction-related exceptions such as\n'BlockedIndefinitelyOnSTM' are replaced by variants that\nindicate which transaction caused the exception.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }