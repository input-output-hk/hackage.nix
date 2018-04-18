{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "groupoids";
          version = "3.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/groupoids/";
        url = "";
        synopsis = "Haskell 98 Groupoids";
        description = "Haskell 98 Groupoids";
        buildType = "Simple";
      };
      components = {
        groupoids = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.base
            hsPkgs.semigroupoids
          ];
        };
      };
    }