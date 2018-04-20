{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "groupoids";
          version = "3.2.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/groupoids/";
        url = "";
        synopsis = "This package has been absorbed into semigroupoids 3.2";
        description = "This package has been absorbed into semigroupoids 3.2";
        buildType = "Simple";
      };
      components = {
        groupoids = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroupoids
          ];
        };
      };
    }