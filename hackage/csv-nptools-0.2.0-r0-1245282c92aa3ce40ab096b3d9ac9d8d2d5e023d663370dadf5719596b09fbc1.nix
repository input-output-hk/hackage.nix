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
      specVersion = "1.4";
      identifier = { name = "csv-nptools"; version = "0.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "A collection of CSV tools";
      description = "A collection of CSV tools";
      buildType = "Simple";
      };
    components = {
      exes = {
        "csv2json" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."txt-sushi" or (buildDepError "txt-sushi"))
            (hsPkgs."json" or (buildDepError "json"))
            ];
          buildable = true;
          };
        "csv-add-id" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."txt-sushi" or (buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-reformat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."txt-sushi" or (buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-tr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."txt-sushi" or (buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-transpose" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."txt-sushi" or (buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-pad" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."txt-sushi" or (buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        };
      };
    }