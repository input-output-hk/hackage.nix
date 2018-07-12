{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pointed";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/pointed/";
        url = "";
        synopsis = "Haskell 98 Pointed and copointed data";
        description = "Haskell 98 Pointed and copointed data";
        buildType = "Simple";
      };
      components = {
        "pointed" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.comonad
            hsPkgs.comonad-transformers
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.stm
          ];
        };
      };
    }