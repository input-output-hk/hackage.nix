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
      identifier = { name = "pandoc-crossref"; version = "0.1.3.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "root@livid.pp.ru";
      author = "Nikolay Yakimov";
      homepage = "";
      url = "";
      synopsis = "Pandoc filter for cross-references";
      description = "pandoc-crossref is a pandoc filter for numbering figures, equations, tables and cross-references to them.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pandoc-crossref" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      tests = {
        "test-pandoc-crossref" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."pandoc-types" or (buildDepError "pandoc-types"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }