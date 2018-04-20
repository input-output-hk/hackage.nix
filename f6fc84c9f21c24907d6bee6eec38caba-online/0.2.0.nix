{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "online";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/online";
        url = "";
        synopsis = "online statistics";
        description = "transformation of statistics to online algorithms";
        buildType = "Simple";
      };
      components = {
        online = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.foldl
            hsPkgs.vector
            hsPkgs.tdigest
            hsPkgs.numhask
            hsPkgs.vector-algorithms
          ];
        };
      };
    }