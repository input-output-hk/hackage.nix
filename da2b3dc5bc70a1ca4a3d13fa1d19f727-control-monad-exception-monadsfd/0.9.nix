{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "control-monad-exception-monadsfd";
          version = "0.9";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra";
        homepage = "http://pepeiborra.github.com/control-monad-exception";
        url = "";
        synopsis = "Monads-fd instances for the EMT exceptions monad transformer";
        description = "Monads-fd instances for the EMT exceptions monad transformer";
        buildType = "Simple";
      };
      components = {
        control-monad-exception-monadsfd = {
          depends  = [
            hsPkgs.base
            hsPkgs.control-monad-exception
            hsPkgs.transformers
            hsPkgs.monads-fd
          ];
        };
      };
    }