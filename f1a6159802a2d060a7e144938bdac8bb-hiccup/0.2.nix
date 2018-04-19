{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hiccup";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "consalus+hiccup@google.com";
        author = "Kyle Consalus";
        homepage = "";
        url = "";
        synopsis = "Simple tcl interpeter";
        description = "A simplistic interpreter for a subset of tcl";
        buildType = "Custom";
      };
      components = {
        exes = {
          hiccup = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
            ];
          };
        };
      };
    }