{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bini";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Tobias Weise 2016";
        maintainer = "tobias_weise@gmx.de";
        author = "Tobias Weise";
        homepage = "";
        url = "";
        synopsis = "A manipulation library for b(inary)ini files used in windows programms like the game Freelancer.";
        description = "A collection of various methods for reading and writing bini files.";
        buildType = "Simple";
      };
      components = {
        bini = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
          ];
        };
      };
    }