{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "profunctor-extras";
          version = "4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/profunctor-extras/";
        url = "";
        synopsis = "This package has been absorbed into profunctors 4.0";
        description = "This package has been absorbed into profunctors 4.0";
        buildType = "Simple";
      };
      components = {
        profunctor-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.profunctors
          ];
        };
      };
    }