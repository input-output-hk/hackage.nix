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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tagchup"; version = "0.4.0.6"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <tagchup@henning-thielemann.de>";
      author = "Henning Thielemann <tagchup@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/tagchup/";
      url = "";
      synopsis = "alternative package for processing of tag soups";
      description = "Tagchup is a package for processing XML, HTML, XHTML documents\nthat can also be malformed.\nIt allows parsing, formatting and retrieval of such document.\nAll functions should be as lazy as possible.\n\nI use a custom data structure based on types from xml-basic\nfor easy interchange with the wraxml package.\n\nIts lazy monadic parser should be more comprehensible and easier to extend\nthan the one of tagsoup-0.6.\nIt also handles XML processing instructions and CDATA sections correctly.\n\nThe name Tagchup resembles Ketchup.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      exes = {
        "validate-tagchup" = {
          depends = [
            (hsPkgs."tagchup" or (buildDepError "tagchup"))
            (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "escape-html" = {
          depends = [
            (hsPkgs."tagchup" or (buildDepError "tagchup"))
            (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.buildexamples) (hsPkgs."hxt" or (buildDepError "hxt"));
          };
        "strip-html" = {
          depends = [
            (hsPkgs."tagchup" or (buildDepError "tagchup"))
            (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      tests = {
        "tagchuptest" = {
          depends = [
            (hsPkgs."tagchup" or (buildDepError "tagchup"))
            (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      benchmarks = {
        "tagchupspeed" = {
          depends = [
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }