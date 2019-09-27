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
      identifier = { name = "type-map"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/type-map";
      url = "";
      synopsis = "Type-indexed maps";
      description = "Maps where keys are types and values can have types depending on their keys.\n\n* \"Data.TypeMap.Dynamic\": Simple maps using the 'Typeable' mechanism,\ntracking keys at run time.\n\"Data.TypeMap.Dynamic.Alt\" is an alternative API based on type applications\nrather than passing proxies, available from GHC 8.0.1.\n\n* \"Data.TypeMap.Vector\": Only available from GHC 8.0.1. Maps whose domains\nare given in their types for compile-time verification and fast indexing.\nTwo more variants with the same API: \"Data.TypeMap.List\" uses lists and\n\"Data.TypeMap.Map\" uses maps (from 'containers'), trading indexing speed\nfor more efficient creation and modification. \"Data.TypeMap.Static\"\nexports some operations on type lists.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0.1") (hsPkgs."vector" or (buildDepError "vector"));
        buildable = true;
        };
      tests = {
        "type-map-test" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "8.0.1") [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."type-map" or (buildDepError "type-map"))
            ];
          buildable = if compiler.isGhc && (compiler.version).ge "8.0.1"
            then true
            else false;
          };
        "type-map-static-test" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "8.0.1") [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."type-map" or (buildDepError "type-map"))
            ];
          buildable = if compiler.isGhc && (compiler.version).ge "8.0.1"
            then true
            else false;
          };
        };
      };
    }