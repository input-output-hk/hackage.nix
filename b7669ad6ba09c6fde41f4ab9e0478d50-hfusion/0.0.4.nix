{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hfusion";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Facundo Dominguez <facundominguez at gmail.com>";
        author = "";
        homepage = "http://www.fing.edu.uy/inco/proyectos/fusion";
        url = "";
        synopsis = "A library for fusing a subset of Haskell programs.";
        description = "This package implements algorithms for fusing pure functions which can\nbe written as primitive recursive functions or as hylomorphisms. The\nfunctions can be mutually recursive and make recursion over multiple\narguments.";
        buildType = "Simple";
      };
      components = {
        hfusion = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskell-src
            hsPkgs.haskell98
            hsPkgs.containers
            hsPkgs.pretty
          ];
        };
      };
    }