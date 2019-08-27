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
      specVersion = "1.6";
      identifier = { name = "ecu"; version = "0.0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Tools for automotive ECU development.";
      description = "A collection of tools developed and used by Eaton's\nelectro-hydraulic software engineers.  Most of these tools\nare for interacting with vehicle electronic\ncontrol units (ECUs) via a CAN bus.\nThis package requires the Kvaser canlib library: http://www.kvaser.com/";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tovcd" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vcd" or (buildDepError "vcd"))
            ];
          };
        "decomp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "cansend" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          libs = [ (pkgs."canlib" or (sysDepError "canlib")) ];
          };
        "canview" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          libs = [ (pkgs."canlib" or (sysDepError "canlib")) ];
          };
        "ccp" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          libs = [ (pkgs."canlib" or (sysDepError "canlib")) ];
          };
        "probe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."digest" or (buildDepError "digest"))
            (hsPkgs."vcd" or (buildDepError "vcd"))
            ];
          libs = [ (pkgs."canlib" or (sysDepError "canlib")) ];
          };
        "toesb" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."digest" or (buildDepError "digest"))
            ];
          };
        "parsedbc" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        "commit" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        "git2cc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }