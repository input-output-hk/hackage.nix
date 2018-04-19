{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vcd";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://tomahawkins.org";
        url = "";
        synopsis = "Tools for writing VCD files.";
        description = "VCD (value change dump) is a format for capturing digital and analog waveforms.\nGTKWave is a popular viewer of VCD files.";
        buildType = "Simple";
      };
      components = {
        vcd = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }