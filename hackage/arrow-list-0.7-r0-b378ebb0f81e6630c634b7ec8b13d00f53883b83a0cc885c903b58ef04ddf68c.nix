{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "arrow-list";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "Sebastiaan Visser";
      homepage = "https://github.com/silkapp/arrow-list";
      url = "";
      synopsis = "List arrows for Haskell.";
      description = "This small Haskell library provides some type class, types and functions to\nwork with list (and list-like) arrows. List arrows represent computations\nthat may return multiple outputs. Making functions that return lists an\ninstance of both the `Category` and `Arrow` type class allow you to easily\ncompose multiple computations into one with standard building blocks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }