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
      identifier = { name = "hquery"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tycho Andersen <tycho@tycho.ws>";
      author = "Tycho Andersen";
      homepage = "";
      url = "";
      synopsis = "A query language for transforming HTML5";
      description = "Hquery is a tool for transforming XmlHtml trees. It is an\nimplementation of Lift's CssSelectors in haskell. It operates over\n\"xmlhtml\" 'Node's, allowing you to build transformers for creating\nand modifying template trees. See \"Text.Hquery\" for some examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."xmlhtml" or (buildDepError "xmlhtml"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      tests = {
        "TransformTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hquery" or (buildDepError "hquery"))
            (hsPkgs."xmlhtml" or (buildDepError "xmlhtml"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "ParserTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hquery" or (buildDepError "hquery"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          };
        "UtilsTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hquery" or (buildDepError "hquery"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."xmlhtml" or (buildDepError "xmlhtml"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }