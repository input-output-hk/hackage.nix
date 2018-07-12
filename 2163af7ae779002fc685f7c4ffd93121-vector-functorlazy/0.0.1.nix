{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "vector-functorlazy";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike izbicki";
        homepage = "http://github.com/mikeizbicki/vector-functorlazy/";
        url = "";
        synopsis = "vectors that perform the fmap operation in constant time";
        description = "Functor-lazy vectors perform the fmap operation in constant time, whereas other vectors require linear time.  All vector operations are supported except for slicing.  See <http://github.com/mikeizbicki/vector-funxtorlazy> for details on how this module works under the hood.";
        buildType = "Simple";
      };
      components = {
        "vector-functorlazy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.vector
            hsPkgs.vector-th-unbox
            hsPkgs.primitive
          ];
        };
      };
    }