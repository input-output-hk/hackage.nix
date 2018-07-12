{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "vector-instances";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ekmett@gmail.com";
        author = "Edward Kmett";
        homepage = "http://patch-tag.com/r/ekmett/vector-instances";
        url = "";
        synopsis = "Orphan Instances for 'Data.Vector'";
        description = "";
        buildType = "Simple";
      };
      components = {
        "vector-instances" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }