{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vcatt";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "BSD3";
        maintainer = "bergey@teallabs.org";
        author = "Daniel Bergey";
        homepage = "http://github.com/bergey/vcatt";
        url = "";
        synopsis = "Recursively check that a directory is under version control.";
        description = "Version control all the things.  Please see README.md";
        buildType = "Simple";
      };
      components = {
        vcatt = {
          depends  = [
            hsPkgs.base
            hsPkgs.shelly
            hsPkgs.extra
            hsPkgs.system-filepath
          ];
        };
        exes = {
          vcatt = {
            depends  = [
              hsPkgs.base
              hsPkgs.vcatt
              hsPkgs.shelly
              hsPkgs.text
            ];
          };
        };
      };
    }