{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      derivedatatypeable = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "comonad-extras";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "git://github.com/ekmett/comonad-extras/";
        url = "";
        synopsis = "Comonad transformers requiring extensions to Haskell 98";
        description = "Comonads and comonad transformers that require extensions to Haskell 98";
        buildType = "Simple";
      };
      components = {
        comonad-extras = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.comonad
            hsPkgs.comonad-transformers
            hsPkgs.comonads-fd
            hsPkgs.distributive
            hsPkgs.semigroupoids
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.MemoTrie
          ];
        };
      };
    }