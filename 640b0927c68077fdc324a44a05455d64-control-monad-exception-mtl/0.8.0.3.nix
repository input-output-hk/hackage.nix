{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "control-monad-exception-mtl";
          version = "0.8.0.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra";
        homepage = "http://pepeiborra.github.com/control-monad-exception";
        url = "";
        synopsis = "MTL instances for the EMT exceptions monad transformer";
        description = "MTL instances for the EMT exceptions monad transformer";
        buildType = "Simple";
      };
      components = {
        "control-monad-exception-mtl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.control-monad-exception
            hsPkgs.mtl
          ];
        };
      };
    }