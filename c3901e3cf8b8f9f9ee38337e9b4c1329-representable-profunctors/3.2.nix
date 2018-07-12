{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "representable-profunctors";
          version = "3.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/representable-profunctors/";
        url = "";
        synopsis = "This package has been absorbed into profunctor-extras.";
        description = "This package has been absorbed into profunctor-extras.";
        buildType = "Simple";
      };
      components = {
        "representable-profunctors" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }