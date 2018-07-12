{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "either";
          version = "3.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/either/";
        url = "";
        synopsis = "An either monad transformer";
        description = "An either monad transformer";
        buildType = "Simple";
      };
      components = {
        "either" = {
          depends  = [
            hsPkgs.base
            hsPkgs.MonadRandom
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.transformers
          ];
        };
      };
    }