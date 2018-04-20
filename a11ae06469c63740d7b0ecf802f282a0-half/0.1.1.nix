{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "half";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/half";
        url = "";
        synopsis = "Half-precision floating-point";
        description = "Half-precision floating-point";
        buildType = "Simple";
      };
      components = {
        half = {
          depends  = [ hsPkgs.base ];
        };
      };
    }