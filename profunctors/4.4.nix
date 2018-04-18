{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "profunctors";
          version = "4.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2014 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/profunctors/";
        url = "";
        synopsis = "Profunctors";
        description = "Profunctors";
        buildType = "Simple";
      };
      components = {
        profunctors = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.distributive
            hsPkgs.semigroupoids
            hsPkgs.tagged
            hsPkgs.transformers
          ];
        };
      };
    }