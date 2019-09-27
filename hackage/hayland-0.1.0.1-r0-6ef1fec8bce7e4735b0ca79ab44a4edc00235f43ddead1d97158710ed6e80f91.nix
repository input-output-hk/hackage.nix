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
      identifier = { name = "hayland"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "auke@tulcod.com";
      author = "Auke Booij";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for the C Wayland library.";
      description = "This package contains bindings to the Wayland library, which is used to interface display devices, drawable clients, and window managers.\n\nWayland exposes a \"fixed\" set of functions, and additionally generates a part of its API from a \"protocol\" file.\nThis package locates that protocol file using pkg-config.\n\nIf you want to interface with other protocols (such as Weston's), refer to the readme for instructions.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."data-flags" or (buildDepError "data-flags"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        libs = [
          (pkgs."wayland-client" or (sysDepError "wayland-client"))
          (pkgs."wayland-cursor" or (sysDepError "wayland-cursor"))
          (pkgs."wayland-egl" or (sysDepError "wayland-egl"))
          (pkgs."wayland-server" or (sysDepError "wayland-server"))
          ];
        buildable = true;
        };
      exes = {
        "wayland-list-globals" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hayland" or (buildDepError "hayland"))
            ];
          buildable = true;
          };
        };
      tests = {
        "firsttest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hayland" or (buildDepError "hayland"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        "enumtest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hayland" or (buildDepError "hayland"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }