{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "indexed-free";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/indexed-free";
        url = "";
        synopsis = "indexed monads for free";
        description = "A free indexed monad";
        buildType = "Simple";
      };
      components = {
        "indexed-free" = {
          depends  = [
            hsPkgs.base
            hsPkgs.indexed
          ];
        };
      };
    }