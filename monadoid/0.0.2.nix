{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monadoid";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A monoid for monads";
        description = "See README";
        buildType = "Simple";
      };
      components = {
        monadoid = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.transformers-base
          ];
        };
      };
    }