{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "vector-heterogenous";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike izbicki";
        homepage = "http://github.com/mikeizbicki/vector-heterogenous/";
        url = "";
        synopsis = "A type-safe library for vectors whose elements can be of any type, or any type satisfying some constraints";
        description = "";
        buildType = "Simple";
      };
      components = {
        "vector-heterogenous" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }