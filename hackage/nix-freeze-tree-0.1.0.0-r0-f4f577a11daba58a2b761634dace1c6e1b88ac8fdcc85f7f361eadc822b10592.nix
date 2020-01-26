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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."data-fix" or (buildDepError "data-fix"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."directory-tree" or (buildDepError "directory-tree"))
            (hsPkgs."hnix" or (buildDepError "hnix"))
            (hsPkgs."hnix-store-core" or (buildDepError "hnix-store-core"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      exes = {
        "nix-freeze-tree" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."nix-freeze-tree-internal" or (buildDepError "nix-freeze-tree-internal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "nix-freeze-tree-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."nix-freeze-tree-internal" or (buildDepError "nix-freeze-tree-internal"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }