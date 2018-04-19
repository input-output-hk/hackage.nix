{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hiccup";
          version = "0.35";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "consalus+hiccup@google.com";
        author = "Kyle Consalus";
        homepage = "http://code.google.com/p/hiccup/";
        url = "";
        synopsis = "Relatively efficient Tcl interpreter with support for basic operations";
        description = "Interpreter for a subset of tcl";
        buildType = "Custom";
      };
      components = {
        exes = {
          hiccup = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.haskell98
              hsPkgs.readline
            ];
          };
        };
      };
    }