{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hayland"; version = "0.1.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."data-flags" or ((hsPkgs.pkgs-errors).buildDepError "data-flags"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        libs = [
          (pkgs."wayland-client" or ((hsPkgs.pkgs-errors).sysDepError "wayland-client"))
          (pkgs."wayland-cursor" or ((hsPkgs.pkgs-errors).sysDepError "wayland-cursor"))
          (pkgs."wayland-egl" or ((hsPkgs.pkgs-errors).sysDepError "wayland-egl"))
          (pkgs."wayland-server" or ((hsPkgs.pkgs-errors).sysDepError "wayland-server"))
          ];
        buildable = true;
        };
      exes = {
        "wayland-list-globals" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hayland" or ((hsPkgs.pkgs-errors).buildDepError "hayland"))
            ];
          buildable = true;
          };
        };
      tests = {
        "firsttest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hayland" or ((hsPkgs.pkgs-errors).buildDepError "hayland"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        "enumtest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hayland" or ((hsPkgs.pkgs-errors).buildDepError "hayland"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }