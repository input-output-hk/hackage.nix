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
      identifier = { name = "nvim-hs"; version = "1.0.0.2"; };
      license = "Apache-2.0";
      copyright = "Copyright 2017 Sebastian Witte <woozletoff@gmail.com>";
      maintainer = "woozletoff@gmail.com";
      author = "Sebastian Witte";
      homepage = "https://github.com/neovimhaskell/nvim-hs";
      url = "";
      synopsis = "Haskell plugin backend for neovim";
      description = "This package provides a plugin provider for neovim. It allows you to write\nplugins for one of the great editors of our time in the best programming\nlanguage of our time! ;-)\n\nYou should find all the documentation you need inside the \"Neovim\" module.\nMost other modules are considered internal, so don't be annoyed if using\nthings from there may break your code!\n\nThe following modules may also be of interest and they should not change\ntheir API: \"Neovim.Quickfix\"\n\nIf you want to write unit tests that interact with neovim, \"Neovim.Test\"\nprovides some useful functions for that.\n\nIf you are keen to debug /nvim-hs/ or a module you are writing, take a look\nat the \"Neovim.Debug\" module.\n\nIf you spot any errors or if you have great ideas, feel free to open an issue\non github.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cereal-conduit" or (buildDepError "cereal-conduit"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."dyre" or (buildDepError "dyre"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."foreign-store" or (buildDepError "foreign-store"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."messagepack" or (buildDepError "messagepack"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."setenv" or (buildDepError "setenv"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."void" or (buildDepError "void"))
          ];
        };
      exes = {
        "nvim-hs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."nvim-hs" or (buildDepError "nvim-hs"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."nvim-hs" or (buildDepError "nvim-hs"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (buildDepError "hspec-discover"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cereal-conduit" or (buildDepError "cereal-conduit"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."dyre" or (buildDepError "dyre"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."foreign-store" or (buildDepError "foreign-store"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."messagepack" or (buildDepError "messagepack"))
            (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."setenv" or (buildDepError "setenv"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }