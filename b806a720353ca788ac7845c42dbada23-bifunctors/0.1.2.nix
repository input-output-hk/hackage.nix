{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bifunctors";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/bifunctors/";
        url = "";
        synopsis = "Haskell 98 bifunctors";
        description = "Haskell 98 bifunctors";
        buildType = "Simple";
      };
      components = {
        bifunctors = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.semigroupoids
          ];
        };
      };
    }