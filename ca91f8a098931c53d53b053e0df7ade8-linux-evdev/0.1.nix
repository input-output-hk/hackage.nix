{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "linux-evdev";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bgamari.foss@gmail.com";
        author = "Ben Gamari";
        homepage = "";
        url = "";
        synopsis = "Bindings to Linux evdev input device interface.";
        description = "";
        buildType = "Simple";
      };
      components = {
        linux-evdev = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.bytestring
          ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }