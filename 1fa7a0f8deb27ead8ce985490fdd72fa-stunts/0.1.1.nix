{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      capture = false;
      portable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "stunts";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011, Csaba Hruska";
        maintainer = "csaba (dot) hruska (at) gmail (dot) com";
        author = "Csaba Hruska, Gergely Patai";
        homepage = "http://www.haskell.org/haskellwiki/LambdaCubeEngine";
        url = "";
        synopsis = "A revival of the classic game Stunts (LambdaCube tech demo)";
        description = "A revival of the classic racing game Stunts to serve as a\nnon-toy-sized example for LambdaCube. In order to make it work, you\nneed to download the original game as per the instructions given by\nthe program.\n\nThe program contains screenshotting functionality that allows you to\ncapture frames as separate PNG files to produce movies with a smooth\nframe rate. To enable, install with the @capture@ flag:\n\n@cabal install --flags=capture@\n\nIt is also possible to compile a version of the program that looks\nfor the resource files in the current directory by enabling the\n@portable@ flag.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "stunts" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.random
              hsPkgs.mtl
              hsPkgs.lambdacube-engine
              hsPkgs.lambdacube-bullet
              hsPkgs.bullet
              hsPkgs.elerea
              hsPkgs.GLFW-b
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.vector
            ] ++ pkgs.lib.optional _flags.capture hsPkgs.Codec-Image-DevIL;
          };
        };
      };
    }