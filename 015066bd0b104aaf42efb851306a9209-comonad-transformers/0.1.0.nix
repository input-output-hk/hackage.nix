{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "comonad-transformers";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://comonad.com/reader/";
        url = "";
        synopsis = "Comonad transformers";
        description = "Comonad transformers";
        buildType = "Simple";
      };
      components = {
        comonad-transformers = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.comonad
            hsPkgs.transformers
          ];
        };
      };
    }