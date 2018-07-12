{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "comonad-transformers";
          version = "4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/comonad-transformers/";
        url = "";
        synopsis = "This package has been merged into comonad 4.0";
        description = "This package has been merged into comonad 4.0";
        buildType = "Simple";
      };
      components = {
        "comonad-transformers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad
          ];
        };
      };
    }