{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "fst";
          version = "0.9.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Markus Forsberg";
        homepage = "http://www.cse.chalmers.se/alumni/markus/fstStudio/";
        url = "";
        synopsis = "Finite state transducers";
        description = "Fst is an application for construction and running of\nfinite state transducers. The application was written\npurely in Haskell, and is intended to be a tool for the\nHaskell programmer, especially for ones that develop language applications.";
        buildType = "Simple";
      };
      components = {
        fst = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
        exes = { fst = {}; };
      };
    }