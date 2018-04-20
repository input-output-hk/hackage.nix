{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "QuadEdge";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "NHAlxr@gmail.com";
        author = "Neal Alexander";
        homepage = "";
        url = "";
        synopsis = "QuadEdge structure for representing triangulations";
        description = "";
        buildType = "Simple";
      };
      components = {
        QuadEdge = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.vector
          ];
        };
      };
    }