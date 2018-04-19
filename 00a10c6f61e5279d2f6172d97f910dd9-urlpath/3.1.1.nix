{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "urlpath";
          version = "3.1.1";
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
        urlpath = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.path-extra
          ];
        };
      };
    }