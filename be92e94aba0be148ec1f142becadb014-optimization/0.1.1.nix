{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "optimization";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Ben Gamari";
        maintainer = "Ben Gamari <bgamari@gmail.com>";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/optimization";
        url = "";
        synopsis = "Numerical optimization";
        description = "These are a set of implementations of various numerical optimization\nmethods in Haskell. Note that these implementations were originally\nwritten as part of a class project; while at one point they worked\nno attention has been given to numerical stability or the many other\npotential difficulties of implementing robust numerical\nmethods. That being said, they should serve to succinctly illustrate\na number of optimization techniques from the modern optimization\nliterature.\n\nThose seeking a high-level overview of some of these methods are\nreferred to Stephen Wright's excellent tutorial from NIPS 2010\n<http://videolectures.net/nips2010_wright_oaml/>. A deeper\nintroduction can be found in Boyd and Vandenberghe's *Complex\nOptimization* which available freely online.";
        buildType = "Custom";
      };
      components = {
        "optimization" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.ad
            hsPkgs.linear
            hsPkgs.semigroupoids
            hsPkgs.distributive
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }