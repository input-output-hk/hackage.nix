{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "representable-profunctors";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/representable-profunctors/";
        url = "";
        synopsis = "Representable profunctors";
        description = "Representable profunctors";
        buildType = "Simple";
      };
      components = {
        "representable-profunctors" = {
          depends  = [
            hsPkgs.base
            hsPkgs.comonad
            hsPkgs.profunctors
            hsPkgs.profunctor-extras
            hsPkgs.transformers
          ];
        };
      };
    }