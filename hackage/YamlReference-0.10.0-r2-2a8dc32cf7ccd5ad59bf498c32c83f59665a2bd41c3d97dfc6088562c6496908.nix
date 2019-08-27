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
      identifier = { name = "YamlReference"; version = "0.10.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Oren Ben-Kiki 2007, 2008, 2016";
      maintainer = "yaml-oren@ben-kiki.org";
      author = "Oren Ben-Kiki";
      homepage = "http://www.ben-kiki.org/oren/YamlReference";
      url = "http://www.ben-kiki.org/oren/YamlReference/YamlReference-0.10.0.tar.gz";
      synopsis = "YAML reference implementation";
      description = "This package contains \\\"the\\\" reference YAML syntax parser\n(\"Text.Yaml.Reference\"), generated directly from the YAML\nspecifications, as well as sample program (@yaml2yeast@)\nthat allows accessing it from the command line, converting\nYAML files to YEAST tokens. This is intended to be more of\nan \\\"executable specification\\\" for YAML rather than an\nactual basis for YAML tool chains. That said, it is\npossible to build interesting tools on top of it, such as\nthe @yeast2html@ YAML syntax visualizer (contained in this\npackage), pretty printers, etc. This is a streaming parser\nthat will \\\"immediately\\\" begin to generate output.\nUpdated to be compatible with the final Apr 1, 2009 YAML\n1.2 spec.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          ];
        };
      exes = {
        "yaml2yeast" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            ];
          };
        };
      tests = {
        "yaml2yeast-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hashmap" or (buildDepError "hashmap"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }