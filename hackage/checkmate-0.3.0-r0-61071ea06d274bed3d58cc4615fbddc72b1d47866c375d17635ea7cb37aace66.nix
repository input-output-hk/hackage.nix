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
    flags = { static = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "checkmate"; version = "0.3.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2017 Hong Minhee";
      maintainer = "hong.minhee@gmail.com";
      author = "Hong Minhee";
      homepage = "https://github.com/spoqa/checkmate#readme";
      url = "";
      synopsis = "Generate checklists relevant to a given patch";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."diff-parse" or (buildDepError "diff-parse"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."range" or (buildDepError "range"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."github" or (buildDepError "github"))
          (hsPkgs."monad-parallel" or (buildDepError "monad-parallel"))
          ];
        };
      exes = {
        "checkmate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."diff-parse" or (buildDepError "diff-parse"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."range" or (buildDepError "range"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."checkmate" or (buildDepError "checkmate"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."diff-parse" or (buildDepError "diff-parse"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."range" or (buildDepError "range"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."diff-parse" or (buildDepError "diff-parse"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."range" or (buildDepError "range"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."checkmate" or (buildDepError "checkmate"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-megaparsec" or (buildDepError "hspec-megaparsec"))
            (hsPkgs."interpolatedstring-perl6" or (buildDepError "interpolatedstring-perl6"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-text" or (buildDepError "quickcheck-text"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          };
        };
      };
    }