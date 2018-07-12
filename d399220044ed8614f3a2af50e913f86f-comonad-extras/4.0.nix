{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "comonad-extras";
          version = "4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/comonad-extras/";
        url = "";
        synopsis = "Exotic comonad transformers";
        description = "Exotic comonad transformers";
        buildType = "Simple";
      };
      components = {
        "comonad-extras" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.comonad
            hsPkgs.distributive
            hsPkgs.semigroupoids
            hsPkgs.transformers
          ];
        };
      };
    }