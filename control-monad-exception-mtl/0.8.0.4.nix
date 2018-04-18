{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "control-monad-exception-mtl";
          version = "0.8.0.4";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra";
        homepage = "http://pepeiborra.github.com/control-monad-exception";
        url = "";
        synopsis = "MTL instances for the EMT exceptions monad transformer";
        description = "MTL instances for the EMT exceptions monad transformer\n\n/This package is only applicable for the now-deprecated mtl v1. Since mtl v2 is compatible with the transformers package, users of mtl2 should simply use the control-monad-exception package.";
        buildType = "Simple";
      };
      components = {
        control-monad-exception-mtl = {
          depends  = [
            hsPkgs.base
            hsPkgs.control-monad-exception
            hsPkgs.mtl
          ];
        };
      };
    }