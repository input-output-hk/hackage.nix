{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vector-sized";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Joe Hermaszewski";
        maintainer = "whats.our.vector.victor@monoid.al";
        author = "Joe Hermaszewski";
        homepage = "http://github.com/expipiplus1/vector-sized#readme";
        url = "";
        synopsis = "Size tagged vectors";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "vector-sized" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.deepseq
          ];
        };
      };
    }