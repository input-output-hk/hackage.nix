{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "constraints";
          version = "0.3.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/constraints/";
        url = "";
        synopsis = "Constraint manipulation";
        description = "Constraint manipulation";
        buildType = "Simple";
      };
      components = {
        "constraints" = {
          depends  = [
            hsPkgs.base
            hsPkgs.newtype
            hsPkgs.ghc-prim
          ];
        };
      };
    }