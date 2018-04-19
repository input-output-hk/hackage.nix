{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      derivedatatypeable = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-lens";
          version = "1.8.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "git://github.com/ekmett/data-lens/";
        url = "";
        synopsis = "Haskell 98 Lenses";
        description = "Haskell 98 Lenses";
        buildType = "Simple";
      };
      components = {
        data-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.comonad-transformers
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.distributive
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.transformers
          ];
        };
      };
    }