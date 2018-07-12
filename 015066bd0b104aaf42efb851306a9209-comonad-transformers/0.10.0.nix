{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "comonad-transformers";
          version = "0.10.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "git://github.com/ekmett/comonad-transformers/";
        url = "";
        synopsis = "Haskell 98 comonad transformers";
        description = "Haskell 98 comonad transformers";
        buildType = "Simple";
      };
      components = {
        "comonad-transformers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.comonad
            hsPkgs.distributive
            hsPkgs.functor-apply
            hsPkgs.semigroups
            hsPkgs.prelude-extras
            hsPkgs.syb-extras
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (compiler.isGhc && true) hsPkgs.syb-extras;
        };
      };
    }