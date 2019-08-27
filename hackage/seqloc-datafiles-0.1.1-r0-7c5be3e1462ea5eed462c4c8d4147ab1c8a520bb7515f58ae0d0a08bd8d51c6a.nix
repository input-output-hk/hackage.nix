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
    flags = { tests = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "seqloc-datafiles"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nick Ingolia";
      homepage = "";
      url = "";
      synopsis = "Read and write BED and GTF format genome annotations";
      description = "Read and write BED and GTF format genome annotations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."iteratee" or (buildDepError "iteratee"))
          (hsPkgs."seqloc" or (buildDepError "seqloc"))
          ];
        };
      exes = {
        "gtf-to-bed" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."seqloc" or (buildDepError "seqloc"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
            ];
          };
        "test-gtf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."seqloc" or (buildDepError "seqloc"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "test-bed" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."seqloc" or (buildDepError "seqloc"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "gtf-introns" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."seqloc" or (buildDepError "seqloc"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      };
    }