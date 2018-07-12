{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "indexed-do-notation";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/indexed-do-notation";
        url = "";
        synopsis = "Do notation for indexed monads";
        description = "A quasiquoter of indexed do notation. The only thing you have to do is to enclose an ordinary do notation in [ido|...|].";
        buildType = "Simple";
      };
      components = {
        "indexed-do-notation" = {
          depends  = [
            hsPkgs.base
            hsPkgs.indexed
            hsPkgs.haskell-src-meta
            hsPkgs.template-haskell
          ];
        };
      };
    }