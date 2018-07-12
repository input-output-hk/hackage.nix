{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-lines";
          version = "1.0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 David McHealy";
        maintainer = "david.mchealy@gmail.com";
        author = "David McHealy";
        homepage = "https://github.com/mindreader/pipes-lines";
        url = "";
        synopsis = "Pipes for grouping by lines with carriage returns.";
        description = "`pipes-lines` contains utility functions for splitting lines that involve carriage returns aka lines ending in \\\\r\\\\n\n\nThese are utility functions that were omitted from pipes-bytestring and pipes-text";
        buildType = "Simple";
      };
      components = {
        "pipes-lines" = {
          depends  = [
            hsPkgs.base
            hsPkgs.pipes
            hsPkgs.pipes-group
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
        tests = {
          "pipes-lines-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-lines
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.pipes
              hsPkgs.pipes-group
              hsPkgs.lens
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }