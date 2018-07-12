{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "urlpath";
          version = "3.2.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Painfully simple URL deployment.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "urlpath" = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.path-extra
            hsPkgs.resourcet
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
      };
    }