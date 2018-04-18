{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bini";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Tobias Weise 2016";
        maintainer = "tobias_weise@gmx.de";
        author = "Tobias Weise";
        homepage = "";
        url = "";
        synopsis = "A collection of various methods for reading and writing bini files.";
        description = "A manipulation library for b(inary)ini files used in windows programms like the game Freelancer.";
        buildType = "Simple";
      };
      components = {
        bini = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
          ];
        };
      };
    }