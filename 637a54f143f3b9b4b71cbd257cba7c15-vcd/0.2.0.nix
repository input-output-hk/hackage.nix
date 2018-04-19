{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vcd";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://tomahawkins.org";
        url = "";
        synopsis = "Reading and writing VCD files.";
        description = "Defined by the Verilog standard, VCD (value change dump) is a file format for\ncapturing digital and analog waveforms, typically from HDL simulation.";
        buildType = "Simple";
      };
      components = {
        vcd = {
          depends  = [
            hsPkgs.base
            hsPkgs.polyparse
            hsPkgs.improve
          ];
        };
      };
    }