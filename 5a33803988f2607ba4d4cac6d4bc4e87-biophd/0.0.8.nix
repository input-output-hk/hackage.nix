{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "biophd";
          version = "0.0.8";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Dan Fornika <dfornika@gmail.com>";
        author = "Ketil Malde <ketil@malde.org>";
        homepage = "https://github.com/dfornika/biophd/wiki";
        url = "";
        synopsis = "Library for reading phd sequence files";
        description = "Library for reading phd sequence files";
        buildType = "Simple";
      };
      components = {
        "biophd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.biocore
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.binary
            hsPkgs.time
            hsPkgs.time-locale-compat
          ];
        };
      };
    }