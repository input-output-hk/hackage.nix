{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "minioperational";
          version = "0.4.7";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/minioperational";
        url = "";
        synopsis = "fast and simple operational monad";
        description = "This package provides tiny implementation of operational monad.";
        buildType = "Simple";
      };
      components = {
        "minioperational" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.elevator
            hsPkgs.clean-unions
          ];
        };
      };
    }