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
      specVersion = "1.2.3";
      identifier = { name = "stm-io-hooks"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson 2009, Chris Kuklewicz 2006";
      homepage = "http://darcs.monoid.at/stm-io-hooks";
      url = "";
      synopsis = "An STM monad with IO hooks";
      description = "This library provides an STM monad with commit and retry IO hooks.\nA retry-action is run (once) if the transaction retries, while commit-actions are\nexecuted iff the transaction commits. The library also gives some atomicity\nguarantees for commit-actions:\n\n* When a TVar is modified in a transaction and this transaction commits,\nthe update remains invisible to other threads until the corresponding\nonCommit action is run.\n\n* If the onCommit action throws an exception, the original values of\nthe modified TVars are restored.\n\nNote: Part of this library uses code from\nthe Haskell Wiki (see <http://haskell.org/haskellwiki/?title=New_monads/MonadAdvSTM>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }