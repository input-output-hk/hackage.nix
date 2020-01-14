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
      identifier = { name = "doctemplates"; version = "0.8.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-19 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/doctemplates#readme";
      url = "";
      synopsis = "Pandoc-style document templates";
      description = "This is the text templating system used by pandoc.\nIt supports variable interpolation, iteration,\ntests for non-blank values, pipes, and partials.\nTemplates are rendered to doclayout Docs,\nand variable values may come from a variety of\ndifferent sources, including aeson Values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."text-conversions" or (buildDepError "text-conversions"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."HsYAML" or (buildDepError "HsYAML"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."doclayout" or (buildDepError "doclayout"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "doctemplates-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctemplates" or (buildDepError "doctemplates"))
            (hsPkgs."doclayout" or (buildDepError "doclayout"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "doctemplates-bench" = {
          depends = [
            (hsPkgs."doctemplates" or (buildDepError "doctemplates"))
            (hsPkgs."doclayout" or (buildDepError "doclayout"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }