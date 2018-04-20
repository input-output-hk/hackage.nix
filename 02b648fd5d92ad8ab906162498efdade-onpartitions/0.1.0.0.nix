{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "onpartitions";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paolo.veronelli@gmail.com";
        author = "";
        homepage = "https://github.com/paolino/onpartitions";
        url = "";
        synopsis = "partition lenses";
        description = "Working over list partitions as a whole";
        buildType = "Simple";
      };
      components = {
        onpartitions = {
          depends  = [ hsPkgs.base ];
        };
      };
    }