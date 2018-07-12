{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chr-parse";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzedijkstra@gmail.com";
        author = "Atze Dijkstra";
        homepage = "https://github.com/atzedijkstra/chr";
        url = "";
        synopsis = "Parsing for chr library";
        description = "Parsing for chr library, currently wrapping around the parsing lib from uulib and adding some utilities";
        buildType = "Simple";
      };
      components = {
        "chr-parse" = {
          depends  = [
            hsPkgs.base
            hsPkgs.uulib
            hsPkgs.containers
          ];
        };
      };
    }