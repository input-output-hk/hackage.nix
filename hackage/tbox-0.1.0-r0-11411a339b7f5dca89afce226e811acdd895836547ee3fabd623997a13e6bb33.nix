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
      specVersion = "1.2";
      identifier = { name = "tbox"; version = "0.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson 2009, 2010";
      homepage = "http://darcs.monoid.at/tbox";
      url = "";
      synopsis = "Transactional variables and data structures with IO hooks";
      description = "This package provides STM data structures with IO hooks.\nThe basic building blocks are instances of class 'TBox'. Such an\ninstance is an STM variable that might contain a value of\nsome type 'a'. In contrast to a plain 'TVar (Maybe a)', a\n'TBox' has IO hooks that are executed transparently on writes and reads.\nThe IO hooks of the 'AdvSTM' monad extend the atomicity of STM transactions\nto the on-commit IO actions, which makes it particularly suitable for\nimplementing a persistent and thread-safe storage.\n\nSee module Control.Concurrent.TFile for a (simple) instance of a 'TBox'\nthat serializes its content to a file via 'Data.Binary'.\n\nNew in this release is the implementation of a skip list in module\nControl.Concurrent.TBox.TSkipList. A skip list is a probabilistic data\nstructure that provides expected run time of /O(log n)/ for\ndictionary operations (insert, lookup, filter, delete, update) similar to\na balanced tree.\nThe main advantage of a skip list is that it does not need rebalancing,\nwhich could cause lots of contention among transactions.\nThe 'TFile' skip list instance tries to reconstruct its content from the\n'TFile'-directory. See module Control.Concurrent.TFile.TSkipList for a\nusage example.\n\nFeedback is highly appreciated!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm-io-hooks" or (errorHandler.buildDepError "stm-io-hooks"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."cautious-file" or (errorHandler.buildDepError "cautious-file"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
          (hsPkgs."safe-failure" or (errorHandler.buildDepError "safe-failure"))
        ];
        buildable = true;
      };
    };
  }