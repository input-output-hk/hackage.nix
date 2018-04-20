{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "cpython";
          version = "3.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (c) John Millikin 2009,\n(c) Python Software Foundation 2001-2009.";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "http://ianen.org/haskell/bindings/cpython/";
        url = "";
        synopsis = "Bindings for libpython";
        description = "";
        buildType = "Simple";
      };
      components = {
        cpython = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
          pkgconfig = [
            pkgconfPkgs."python-3.1"
          ];
        };
      };
    }