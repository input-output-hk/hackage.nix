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
    flags = { fastcompile = true; };
    package = {
      specVersion = "1.20";
      identifier = { name = "fltkhs"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "http://github.com/deech/fltkhs";
      url = "";
      synopsis = "FLTK bindings";
      description = "Low level bindings for the FLTK GUI toolkit.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        };
      exes = {
        "fltkhs-fluidtohs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        "fltkhs-pack" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-tile" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-nativefilechooser-simple-app" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-table-as-container" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-texteditor-simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-textdisplay-with-colors" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-doublebuffer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-make-tree" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-tree-simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-table-spreadsheet-with-keyboard-nav" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-test_call" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-buttons" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-table-simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-table-sort" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "fltkhs-arc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            ];
          };
        "fltkhs-bitmap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "fltkhs-boxtype" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "fltkhs-browser" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "fltkhs-clock" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fltkhs" or (buildDepError "fltkhs"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }