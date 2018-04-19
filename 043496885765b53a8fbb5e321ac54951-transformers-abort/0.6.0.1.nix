{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "transformers-abort";
          version = "0.6.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2011-2016 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/transformers-abort";
        url = "";
        synopsis = "Error and short-circuit monad transformers";
        description = "This package provides error and short-circuit monad transformers.";
        buildType = "Simple";
      };
      components = {
        transformers-abort = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.semigroupoids
            hsPkgs.pointed
            hsPkgs.monad-control
          ];
        };
      };
    }