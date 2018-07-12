{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "profunctors";
          version = "5.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/profunctors/";
        url = "";
        synopsis = "Profunctors";
        description = "Profunctors.";
        buildType = "Simple";
      };
      components = {
        "profunctors" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-orphans
            hsPkgs.bifunctors
            hsPkgs.comonad
            hsPkgs.contravariant
            hsPkgs.distributive
            hsPkgs.semigroups
            hsPkgs.tagged
            hsPkgs.transformers
          ];
        };
      };
    }