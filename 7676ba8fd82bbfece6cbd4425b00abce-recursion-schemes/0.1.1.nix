{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "recursion-schemes";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/recursion-schemes/";
        url = "";
        synopsis = "Generalized bananas, lenses and barbed wire";
        description = "Generalized bananas, lenses and barbed wire";
        buildType = "Simple";
      };
      components = {
        recursion-schemes = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.comonad
            hsPkgs.comonad-transformers
            hsPkgs.streams
          ];
        };
      };
    }