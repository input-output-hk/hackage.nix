{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      derivedatatypeable = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "semigroups";
          version = "0.5.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/semigroups/";
        url = "";
        synopsis = "Haskell 98 semigroups";
        description = "Haskell 98 semigroups";
        buildType = "Simple";
      };
      components = {
        semigroups = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }