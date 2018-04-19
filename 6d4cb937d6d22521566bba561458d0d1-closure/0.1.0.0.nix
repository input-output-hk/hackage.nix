{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "closure";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2013 Joseph Abrahamson";
        maintainer = "me@jspha.com";
        author = "Joseph Abrahamson";
        homepage = "http://github.com/tel/closure";
        url = "";
        synopsis = "Depth- and breadth-first set closures";
        description = "Fast set closure operators.";
        buildType = "Simple";
      };
      components = {
        closure = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.unordered-containers
          ];
        };
      };
    }