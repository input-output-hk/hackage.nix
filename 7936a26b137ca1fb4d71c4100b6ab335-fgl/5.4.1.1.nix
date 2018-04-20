{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "fgl";
          version = "5.4.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Martin Erwig";
        author = "Martin Erwig";
        homepage = "http://web.engr.oregonstate.edu/~erwig/fgl/haskell";
        url = "";
        synopsis = "Martin Erwig's Functional Graph Library";
        description = "";
        buildType = "Custom";
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