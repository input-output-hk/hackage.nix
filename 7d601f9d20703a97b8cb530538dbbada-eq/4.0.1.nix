{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "eq";
          version = "4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/eq/";
        url = "";
        synopsis = "Leibnizian equality";
        description = "Leibnizian equality";
        buildType = "Simple";
      };
      components = {
        eq = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroupoids
          ];
        };
      };
    }