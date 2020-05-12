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
      specVersion = "2.2";
      identifier = { name = "nix-freeze-tree"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "(c) 2020 Jack Kelly";
      maintainer = "jack@jackkelly.name";
      author = "Jack Kelly";
      homepage = "https://git.sr.ht/~jack/nix-freeze-tree";
      url = "";
      synopsis = "Convert a tree of files into fixed-output derivations";
      description = "@nix-freeze-tree@ walks a directory tree and generates a tree of Nix\nexpressions that recreate the tree from fixed-output derivations,\none derivation per file in the source tree. See @README.md@ to get\nstarted.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "nix-freeze-tree-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."hnix" or (errorHandler.buildDepError "hnix"))
            (hsPkgs."hnix-store-core" or (errorHandler.buildDepError "hnix-store-core"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      exes = {
        "nix-freeze-tree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nix-freeze-tree-internal" or (errorHandler.buildDepError "nix-freeze-tree-internal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "nix-freeze-tree-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."nix-freeze-tree-internal" or (errorHandler.buildDepError "nix-freeze-tree-internal"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }