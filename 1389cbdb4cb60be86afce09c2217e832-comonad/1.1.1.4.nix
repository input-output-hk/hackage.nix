{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "comonad";
          version = "1.1.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2012 Edward A. Kmett,\nCopyright (C) 2004-2008 Dave Menendez";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/comonad/";
        url = "";
        synopsis = "Haskell 98 compatible comonads";
        description = "Haskell 98 compatible comonads";
        buildType = "Simple";
      };
      components = {
        comonad = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.semigroups
          ];
        };
      };
    }