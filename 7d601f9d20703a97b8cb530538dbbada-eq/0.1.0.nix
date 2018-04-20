{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      typefamilies = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "eq";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010-2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://comonad.com/reader/";
        url = "";
        synopsis = "Leibnizian equality";
        description = "Leibnizian equality";
        buildType = "Simple";
      };
      components = {
        eq = {
          depends  = [ hsPkgs.base ];
        };
      };
    }