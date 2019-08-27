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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "atlassian-connect-descriptor";
        version = "0.4.5.0";
        };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rmassaioli@atlassian.com";
      author = "Robert Massaioli";
      homepage = "";
      url = "";
      synopsis = "Code that helps you create a valid Atlassian Connect Descriptor.";
      description = "Allows you to generate an Atlassian Connect Descriptor in a typesafe manner and easily convert it\nit into JSON using the fantastic Aeson library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time-units" or (buildDepError "time-units"))
          (hsPkgs."cases" or (buildDepError "cases"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ] ++ [
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        };
      tests = {
        "test-descriptor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."atlassian-connect-descriptor" or (buildDepError "atlassian-connect-descriptor"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time-units" or (buildDepError "time-units"))
            (hsPkgs."cases" or (buildDepError "cases"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ] ++ [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        };
      };
    }