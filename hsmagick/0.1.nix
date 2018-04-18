{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hsmagick";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Tim Chevalier, 2008";
        maintainer = "chevalier@alum.wellesley.edu";
        author = "Tim Chevalier";
        homepage = "http://community.haskell.org/~tim";
        url = "";
        synopsis = "FFI bindings for the GraphicsMagick library";
        description = "FFI bindings for the GraphicsMagick library";
        buildType = "Simple";
      };
      components = {
        hsmagick = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.pretty
            hsPkgs.process
          ];
          libs = [
            pkgs.tiff
            pkgs.jasper
            pkgs.jpeg
            pkgs.png
            pkgs.wmflite
            pkgs.bz2
            pkgs.z
            pkgs.m
            pkgs.pthread
          ];
        };
      };
    }