{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "graph-serialize";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas Schilling <nominolo@googlemail.com>";
        author = "Thomas Schilling";
        homepage = "http://github.com/nominolo/graph-serialize";
        url = "";
        synopsis = "Serialization of data structures with references.";
        description = "Serialization of data structures with references.";
        buildType = "Simple";
      };
      components = {
        "graph-serialize" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.array
          ];
        };
      };
    }