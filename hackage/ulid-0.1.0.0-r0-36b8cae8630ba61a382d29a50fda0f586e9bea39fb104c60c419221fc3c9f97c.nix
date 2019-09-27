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
      specVersion = "1.10";
      identifier = { name = "ulid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Steve Kollmansberger";
      maintainer = "steve@kolls.net";
      author = "Steve Kollmansberger";
      homepage = "https://github.com/steven777400/ulid";
      url = "";
      synopsis = "Implementation of ULID, lexicographically sortable unique identifiers";
      description = "Implementation of alizain's ULID identifier (https://github.com/alizain/ulid ).\nUUID can be suboptimal for many uses-cases because:\nIt isn't the most character efficient way of encoding 128 bits of randomness\nUUID v1/v2 is impractical in many environments, as it requires access to a unique, stable MAC address\nUUID v3/v5 requires a unique seed and produces randomly distributed IDs, which can cause fragmentation in many data structures\nUUID v4 provides no other information than randomness which can cause fragmentation in many data structures\nInstead, herein is proposed ULID:\n128-bit compatibility with UUID\n1.21e+24 unique ULIDs per millisecond\nLexicographically sortable!\nCanonically encoded as a 26 character string, as opposed to the 36 character UUID\nUses Crockford's base32 for better efficiency and readability (5 bits per character)\nCase insensitive\nNo special characters (URL safe)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."crockford" or (buildDepError "crockford"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          ];
        buildable = true;
        };
      exes = {
        "ulid-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ulid" or (buildDepError "ulid"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            ];
          buildable = true;
          };
        };
      tests = {
        "ulid-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."ulid" or (buildDepError "ulid"))
            ];
          buildable = true;
          };
        };
      };
    }