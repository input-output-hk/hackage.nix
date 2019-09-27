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
      identifier = { name = "tpdb"; version = "2.1.1"; };
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
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."xml-hamlet" or (buildDepError "xml-hamlet"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          ];
        buildable = true;
        };
      exes = {
        "plain2xtc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      tests = {
        "XML" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          buildable = true;
          };
        "XML_relative" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          buildable = true;
          };
        "TRS" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "TRS_02" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "SRS" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "Speed" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = false;
          };
        "Attributes" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        "XML-Theory" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          buildable = true;
          };
        "CPF-AC" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          buildable = true;
          };
        "Parse-AC" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          buildable = true;
          };
        "read-cpf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          buildable = true;
          };
        "read-complex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          buildable = true;
          };
        "read-large" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tpdb" or (buildDepError "tpdb"))
            ];
          buildable = true;
          };
        };
      };
    }