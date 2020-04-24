{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."data-fix" or ((hsPkgs.pkgs-errors).buildDepError "data-fix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."directory-tree" or ((hsPkgs.pkgs-errors).buildDepError "directory-tree"))
            (hsPkgs."hnix" or ((hsPkgs.pkgs-errors).buildDepError "hnix"))
            (hsPkgs."hnix-store-core" or ((hsPkgs.pkgs-errors).buildDepError "hnix-store-core"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."raw-strings-qq" or ((hsPkgs.pkgs-errors).buildDepError "raw-strings-qq"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      exes = {
        "nix-freeze-tree" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."nix-freeze-tree-internal" or ((hsPkgs.pkgs-errors).buildDepError "nix-freeze-tree-internal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "nix-freeze-tree-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."nix-freeze-tree-internal" or ((hsPkgs.pkgs-errors).buildDepError "nix-freeze-tree-internal"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-discover" or ((hsPkgs.pkgs-errors).buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }