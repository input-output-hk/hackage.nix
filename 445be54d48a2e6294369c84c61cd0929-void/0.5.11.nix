{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      safe = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "void";
          version = "0.5.11";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2012 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/void";
        url = "";
        synopsis = "A Haskell 98 logically uninhabited data type";
        description = "A Haskell 98 logically uninhabited data type, used to indicate that a given term should not exist.";
        buildType = "Simple";
      };
      components = {
        "void" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.semigroups
          ];
        };
      };
    }