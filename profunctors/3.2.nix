{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "profunctors";
          version = "3.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/profunctors/";
        url = "";
        synopsis = "Haskell 98 Profunctors";
        description = "Haskell 98 Profunctors";
        buildType = "Simple";
      };
      components = {
        profunctors = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.tagged
          ];
        };
      };
    }