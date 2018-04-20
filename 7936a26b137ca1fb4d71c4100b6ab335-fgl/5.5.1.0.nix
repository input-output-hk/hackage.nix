{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fgl";
          version = "5.5.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Martin Erwig, Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Martin Erwig's Functional Graph Library";
        description = "An inductive representation of manipulating graph data structures.\n\nOriginal website can be found at <http://web.engr.oregonstate.edu/~erwig/fgl/haskell>.";
        buildType = "Simple";
      };
      components = {
        fgl = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }