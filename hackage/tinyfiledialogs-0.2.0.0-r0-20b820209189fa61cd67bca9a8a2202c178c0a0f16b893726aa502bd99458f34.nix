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
      identifier = { name = "tinyfiledialogs"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 - 2017 Guillaume Vareille, Michael Tolly";
      maintainer = "miketolly@gmail.com";
      author = "Guillaume Vareille, Don Heyse, Michael Tolly";
      homepage = "https://github.com/mtolly/tinyfiledialogs";
      url = "";
      synopsis = "Wrapper around the 'tiny file dialogs' C library";
      description = "<https://sourceforge.net/projects/tinyfiledialogs/ tiny file dialogs>\nis a single self-contained C library that provides a powerful set of\ncross-platform dialog boxes providing the following functions:\n\n* message & question\n\n* input & password\n\n* save file\n\n* open file(s)\n\n* select folder\n\n* color picker\n\nThis package bundles the C library (currently v3.0.9)\nand provides a complete Haskell interface.\nProper Unicode support has been tested on Windows, Mac and Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."bytestring" or (buildDepError "bytestring"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."comdlg32" or (sysDepError "comdlg32"))
          (pkgs."ole32" or (sysDepError "ole32"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        };
      };
    }