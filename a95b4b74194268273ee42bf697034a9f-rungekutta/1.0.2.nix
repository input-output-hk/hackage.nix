{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "rungekutta";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Uwe Hollerbach <uh@alumni.caltech.edu>";
        author = "Uwe Hollerbach <uh@alumni.caltech.edu>";
        homepage = "";
        url = "";
        synopsis = "A collection of explicit Runge-Kutta methods of various orders";
        description = "This package contains a collection of explicit Runge-Kutta\nmethods of various orders, some with fixed-size steps (no\nerror estimate) and some intended for adaptive stepsize\n(ie, they include an error estimate). There are a couple of\ntest programs which include some adaptive stepsize control,\nhowever there is not yet any such routine in the library\nitself. There is not yet much in the way of documentation.\nIt's version 1.0.2 because the initial version wasn't cabalized.";
        buildType = "Simple";
      };
      components = {
        "rungekutta" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }