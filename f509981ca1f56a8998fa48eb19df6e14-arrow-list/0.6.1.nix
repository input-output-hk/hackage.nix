{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "arrow-list";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sebastiaan Visser <code@fvisser.nl>";
        author = "Sebastiaan Visser";
        homepage = "https://github.com/sebastiaanvisser/arrow-list";
        url = "";
        synopsis = "List arrows for Haskell.";
        description = "This small Haskell library provides some type class, types and functions to\nwork with list (and list-like) arrows. List arrows represent computations\nthat may return multiple outputs. Making functions that return lists an\ninstance of both the `Category` and `Arrow` type class allow you to easily\ncompose multiple computations into one with standard building blocks.";
        buildType = "Simple";
      };
      components = {
        arrow-list = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }