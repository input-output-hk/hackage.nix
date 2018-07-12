{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lambdacube-engine";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "csaba (dot) hruska (at) gmail (dot) com";
        author = "Csaba Hruska, Gergely Patai";
        homepage = "http://www.haskell.org/haskellwiki/LambdaCubeEngine";
        url = "";
        synopsis = "3D rendering engine written entirely in Haskell";
        description = "LambdaCube is a 3D rendering engine written entirely in Haskell.\nIt targets newer graphics hardware. The engine uses Ogre3D's mesh\nand material file format. The main goal of this project is to\nprovide a modern and feature rich graphical backend for various\nHaskell projects (e.g. FRP libraries).\n\nWhile the interface looks huge on the surface, the only part of\ninterest to application developers is the \"Graphics.LambdaCube\"\nmodule, and possibly \"Graphics.LambdaCube.Loader.StbImage\".  The\nrest is only exposed to make low-level interfacing possible.";
        buildType = "Simple";
      };
      components = {
        "lambdacube-engine" = {
          depends  = [
            hsPkgs.OpenGLRaw
            hsPkgs.vect
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bitmap
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.stb-image
            hsPkgs.uulib
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.bytestring-trie
            hsPkgs.xml
            hsPkgs.zip-archive
            hsPkgs.mtl
          ];
        };
      };
    }