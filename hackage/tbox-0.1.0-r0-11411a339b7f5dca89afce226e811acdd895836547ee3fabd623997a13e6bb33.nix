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
      specVersion = "1.2.3";
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."stm-io-hooks" or (buildDepError "stm-io-hooks"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."cautious-file" or (buildDepError "cautious-file"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."IfElse" or (buildDepError "IfElse"))
          (hsPkgs."safe-failure" or (buildDepError "safe-failure"))
          ];
        buildable = true;
        };
      };
    }