{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs.base)
          (hsPkgs.xml)
          (hsPkgs.process)
          (hsPkgs.template-haskell)
          (hsPkgs.data-flags)
          (hsPkgs.time)
          ];
        libs = [
          (pkgs."wayland-client")
          (pkgs."wayland-cursor")
          (pkgs."wayland-egl")
          (pkgs."wayland-server")
          ];
        };
      exes = {
        "wayland-list-globals" = {
          depends = [ (hsPkgs.base) (hsPkgs.hayland) ];
          };
        };
      tests = {
        "firsttest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hayland)
            (hsPkgs.xml)
            (hsPkgs.process)
            ];
          };
        "enumtest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hayland)
            (hsPkgs.xml)
            (hsPkgs.process)
            ];
          };
        };
      };
    }