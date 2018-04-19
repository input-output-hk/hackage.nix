{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timeprint";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "iareloser@gmail.com";
        author = "Justin Chen";
        homepage = "";
        url = "";
        synopsis = "Prints timestamps after each line evaluated";
        description = "Prints timestamps after each line evaluated in ghci.\nUse by adding `-interactive-print=Text.Show.TimePrint.timePrint` to the ghci command, or add this to your .ghci file:\nimport qualified Text.Show.TimePrint\n:set -interactive-print=Text.Show.TimePrint.timePrint";
        buildType = "Simple";
      };
      components = {
        timeprint = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
          ];
        };
      };
    }