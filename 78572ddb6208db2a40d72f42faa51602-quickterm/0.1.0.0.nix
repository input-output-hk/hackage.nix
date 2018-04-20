{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickterm";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "sgschlesinger@gmail.com";
        author = "Samuel Schlesinger";
        homepage = "https://github.com/SamuelSchlesinger/Quickterm";
        url = "";
        synopsis = "An interface for describing and executing terminal applications";
        description = "A quick and modular way to construct terminal interfaces.";
        buildType = "Simple";
      };
      components = {
        quickterm = {
          depends  = [
            hsPkgs.edit-distance
            hsPkgs.hashmap
            hsPkgs.base
          ];
        };
      };
    }