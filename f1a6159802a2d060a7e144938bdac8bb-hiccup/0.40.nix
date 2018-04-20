{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hiccup";
          version = "0.40";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "consalus+hiccup@gmail.com";
        author = "Kyle Consalus";
        homepage = "http://hiccup.googlecode.com/";
        url = "";
        synopsis = "Relatively efficient Tcl interpreter with support for basic operations";
        description = "Interpreter for a subset of tcl";
        buildType = "Simple";
      };
      components = {
        exes = {
          hiccup = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.haskell98
              hsPkgs.readline
              hsPkgs.parsec
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.random
            ];
          };
        };
      };
    }