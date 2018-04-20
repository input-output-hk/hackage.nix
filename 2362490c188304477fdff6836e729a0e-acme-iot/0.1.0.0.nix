{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-iot";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mniip@mniip.com";
        author = "mniip";
        homepage = "";
        url = "";
        synopsis = "IO monad transformer";
        description = "IO transformer capable of adding IO capabilities to any monad.";
        buildType = "Simple";
      };
      components = {
        acme-iot = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.ghc-prim
          ];
        };
      };
    }