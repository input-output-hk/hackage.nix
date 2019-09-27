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
    flags = {
      base3 = false;
      driver = false;
      no-lib = false;
      test = false;
      coverage = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "NaturalSort"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Joachim Fasting 2008-2010";
      maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
      author = "";
      homepage = "http://github.com/joachifm/natsort";
      url = "";
      synopsis = "Natural sorting for strings";
      description = "A library for sorting strings \"naturally\", i.e. taking numerical\nvalues into account when comparing textual inputs.\n\nE.g., \"1\" < \"10\", and \"10 bottles of beer\" < \"100 bottles of beer\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."strict" or (buildDepError "strict"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = if flags.no-lib || flags.test then false else true;
        };
      exes = {
        "nsort" = {
          depends = [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."strict" or (buildDepError "strict"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = if flags.test || !flags.driver && !flags.no-lib
            then false
            else true;
          };
        "test" = {
          depends = [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."strict" or (buildDepError "strict"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }