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
      identifier = { name = "scuttlebutt-types"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 bkil.hu, Peter Ferenc Hajdu, Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "bkil.hu, Peter Ferenc Hajdu, Joey Hess";
      homepage = "";
      url = "";
      synopsis = "generic types for Secure Scuttlebutt";
      description = "Secure Scuttlebutt is a database of unforgeable append-only feeds,\noptimized for efficient replication for peer to peer protocols.\n\nThis library contains data types for common Scuttlebutt messages,\nincluding JSON deserialization.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ed25519" or (buildDepError "ed25519"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "scuttlebutt-types-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."scuttlebutt-types" or (buildDepError "scuttlebutt-types"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }