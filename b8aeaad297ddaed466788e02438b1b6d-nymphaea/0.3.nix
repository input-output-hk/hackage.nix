{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "nymphaea";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Cale Gibbard <cgibbard@gmail.com>";
        author = "Cale Gibbard, Paolo Martini";
        homepage = "";
        url = "";
        synopsis = "An interactive GUI for manipulating L-systems";
        description = "An L-system is a small grammar specifying fractal functions, famous\nfor their uncanny resemblance to plants and other lifeforms.\nnymphaea displays these L-systems in an attractive visual manner, and\nallows you to manipulate them.";
        buildType = "Simple";
      };
      components = {
        exes = {
          nymphaea = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.glib
              hsPkgs.gtk
              hsPkgs.glade
              hsPkgs.cairo
            ];
          };
        };
      };
    }