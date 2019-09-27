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
      specVersion = "0";
      identifier = { name = "YamlReference"; version = "0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Oren Ben-Kiki 2007";
      maintainer = "yaml-oren@ben-kiki.org";
      author = "Oren Ben-Kiki";
      homepage = "www.ben-kiki.org/oren/YamlReference";
      url = "www.ben-kiki.org/oren/YamlReference/YamlReference-0.2.tar.gz";
      synopsis = "YAML reference implementation";
      description = "This package contains \\\"the\\\" reference YAML syntax parser\n(\"Text.Yaml.Reference\"), generated directly from the YAML\nspecifications, as well as sample program (@yaml2yeast@) that\nallows accessing it from the command line, converting YAML\nfiles to YEAST tokens. This is intended to be more of an\n\\\"executable specification\\\" for YAML rather than an actual\nbasis for YAML tool chains. That said, it is possible to build\ninteresting tools on top of it, such as the @yeast2html@ YAML\nsyntax visualizer (contained in this package), pretty\nprinters, etc. This is a streaming parser that will\n\\\"immediately\\\" begin to generate output, but it has a memory\nleak (actually, retention) problem that prevents it from being\napplied to \\\"large\\\" files. To debug this with minimal syntax\nproductions use @yes \"#\" | yaml2yeast -p debug-leak@.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          ];
        buildable = true;
        };
      exes = {
        "yaml2yeast" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            ];
          buildable = true;
          };
        "yaml2yeast-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            ];
          buildable = true;
          };
        };
      };
    }