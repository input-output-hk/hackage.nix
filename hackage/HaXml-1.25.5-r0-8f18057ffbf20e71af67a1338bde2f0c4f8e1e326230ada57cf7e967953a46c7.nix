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
      identifier = { name = "HaXml"; version = "1.25.5"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "author";
      author = "Malcolm Wallace <Malcolm.Wallace@me.com>";
      homepage = "http://projects.haskell.org/HaXml/";
      url = "";
      synopsis = "Utilities for manipulating XML documents";
      description = "This version, 1.25.5 is a Non-Maintainer Upload (NMU). Report issues to the Hackage Trustees issue tracker.\n\nHaskell utilities for parsing, filtering, transforming and\ngenerating XML documents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."polyparse" or (buildDepError "polyparse"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"));
        };
      exes = {
        "Canonicalise" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          };
        "CanonicaliseLazy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          };
        "Xtract" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          };
        "Validate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            ];
          };
        "MkOneOf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            ];
          };
        "DtdToHaskell" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          };
        "XsdToHaskell" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "FpMLToHaskell" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }