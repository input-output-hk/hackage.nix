{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "adjunctions";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/adjunctions/";
        url = "";
        synopsis = "Adjunctions";
        description = "Adjunctions";
        buildType = "Simple";
      };
      components = {
        adjunctions = {
          depends  = [
            hsPkgs.base
            hsPkgs.contravariant
            hsPkgs.comonad
            hsPkgs.distributive
            hsPkgs.functor-apply
            hsPkgs.comonad-transformers
            hsPkgs.transformers
          ];
        };
      };
    }