{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tagged-transformer";
          version = "0.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/tagged-transformer";
        url = "";
        synopsis = "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments";
        description = "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments";
        buildType = "Simple";
      };
      components = {
        "tagged-transformer" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.contravariant
            hsPkgs.distributive
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.reflection
            hsPkgs.semigroupoids
            hsPkgs.tagged
            hsPkgs.transformers
          ];
        };
      };
    }