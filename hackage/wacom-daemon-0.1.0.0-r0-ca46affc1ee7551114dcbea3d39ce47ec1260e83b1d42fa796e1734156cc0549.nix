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
      identifier = { name = "wacom-daemon"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov@iportnov.ru";
      author = "Ilya Portnov";
      homepage = "https://github.com/portnov/wacom-intuos-pro-scripts";
      url = "";
      synopsis = "Manage Wacom tablet settings profiles, including Intuos Pro ring modes";
      description = "This package provides a daemon process and a simple API to manage Wacom tablet settings profiles.\nEach profile is contains set of tablet settings: buttons mapping, touchpad configuration, etc.\nModes for Intuos Pro Express Ring are also supported.\nThe daemon detects tablet plug/unplug via udev and applies settings via xsetwacom command line\nutility.\nThe API may be used to manage tablet settings from any haskell application, for example, XMonad.\nThe package provides a daemon (hswcmd) which can manage tablet profiles for any lightweight\ndesktop environment (without KDE/GNOME). The daemon is configured via YAML config file.\nSimple utility to manage tablet settings from command line (hswcmcli) interface is also provided.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."udev" or (buildDepError "udev"))
          (hsPkgs."select" or (buildDepError "select"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."X11" or (buildDepError "X11"))
          (hsPkgs."libnotify" or (buildDepError "libnotify"))
          ];
        };
      exes = {
        "hswchd" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."udev" or (buildDepError "udev"))
            (hsPkgs."select" or (buildDepError "select"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."libnotify" or (buildDepError "libnotify"))
            ];
          };
        "hswcmcli" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."udev" or (buildDepError "udev"))
            (hsPkgs."select" or (buildDepError "select"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."libnotify" or (buildDepError "libnotify"))
            ];
          };
        };
      };
    }