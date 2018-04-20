{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-st";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/monad-st";
        url = "";
        synopsis = "Provides a MonadST class";
        description = "Provides a MonadST class";
        buildType = "Simple";
      };
      components = {
        monad-st = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }