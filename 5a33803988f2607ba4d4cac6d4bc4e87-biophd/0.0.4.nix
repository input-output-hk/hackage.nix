{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "biophd";
          version = "0.0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "dfornika@gmail.com";
        author = "Dan Fornika <dfornika@gmail.com>";
        homepage = "https://patch-tag.com/r/dfornika/biophd/home";
        url = "";
        synopsis = "Library for reading phd sequence files";
        description = "Library for reading phd sequence files";
        buildType = "Simple";
      };
      components = {
        biophd = {
          depends  = [
            hsPkgs.base
            hsPkgs.biocore
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.binary
          ];
        };
      };
    }