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
      specVersion = "1.8";
      identifier = { name = "tpdb"; version = "1.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Alexander Bau, Johannes Waldmann";
      homepage = "https://github.com/jwaldmann/haskell-tpdb";
      url = "";
      synopsis = "Data Type for Rewriting Systems";
      description = "The package defines data types and parsers for rewriting systems\nand termination proofs,\nas used in the Termination Competitions.\nFor syntax and semantics specification,\nsee <http://www.termination-portal.org/wiki/TPDB>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."wl-pprint-text" or (buildDepError "wl-pprint-text"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."HaXml" or (buildDepError "HaXml"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        };
      tests = {
        "XML" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          };
        "TRS" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          };
        "TRS_02" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          };
        "SRS" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          };
        "Speed" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          };
        };
      };
    }