{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-skeleton";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/monad-skeleton";
        url = "";
        synopsis = "Monads of program skeleta";
        description = "Fast operational monad library";
        buildType = "Simple";
      };
      components = {
        monad-skeleton = {
          depends  = [ hsPkgs.base ];
        };
      };
    }