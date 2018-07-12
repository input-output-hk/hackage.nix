{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unpack-funcs";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wasserman.louis@gmail.com";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "Monad transformers that mirror worker-wrapper transformations.";
        description = "Provides a typeclass and Template Haskell-driven instance generators that create \"worker-wrapper\"\n@ReaderT@ monad transformers, which unpacks the arguments of single-constructor data types.";
        buildType = "Simple";
      };
      components = {
        "unpack-funcs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.transformers
          ];
        };
      };
    }