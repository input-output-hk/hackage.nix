{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "comonads-fd";
          version = "4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/comonads-fd/";
        url = "";
        synopsis = "This package has been merged into comonad 4.0";
        description = "This package has been merged into comonad 4.0";
        buildType = "Simple";
      };
      components = {
        comonads-fd = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad
          ];
        };
      };
    }