{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fixed";
          version = "0.2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/fixed";
        url = "";
        synopsis = "Signed 15.16 precision fixed point arithmetic";
        description = "Signed 15.16 precision fixed point arithmetic";
        buildType = "Simple";
      };
      components = {
        fixed = {
          depends  = [ hsPkgs.base ];
        };
      };
    }