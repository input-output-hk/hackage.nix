{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "catch-fd";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andy Sonnenburg <andy22286@gmail.com>";
        author = "Andy Sonnenburg";
        homepage = "http://github.com/sonyandy/catch-fd";
        url = "";
        synopsis = "MonadThrow and MonadCatch, using functional dependencies";
        description = "MonadThrow and MonadCatch, using functional dependencies";
        buildType = "Simple";
      };
      components = {
        "catch-fd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
      };
    }