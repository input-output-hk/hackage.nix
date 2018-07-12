{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hashable-time";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ankarakulov@gmail.com";
        author = "Alexey Karakulov";
        homepage = "";
        url = "";
        synopsis = "Hashable instances for Data.Time";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hashable-time" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.time
          ];
        };
      };
    }