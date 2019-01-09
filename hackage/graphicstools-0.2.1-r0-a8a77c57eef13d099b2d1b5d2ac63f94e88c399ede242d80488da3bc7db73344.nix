{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "graphicstools"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matti.j.eskelinen@jyu.fi";
      author = "Matti J. Eskelinen & Ville Tirronen";
      homepage = "https://yousource.it.jyu.fi/cvlab/pages/GraphicsTools";
      url = "";
      synopsis = "Tools for creating graphical UIs, based on wxHaskell.";
      description = "This library provides interfaces for creating easily\ngraphical UIs especially for computer vision purposes,\nand for rendering information in graphical form.\nImplementations are provided for CV libraries.\nExample applications are included.\n(This is an early preview version)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.bindings-DSL)
          (hsPkgs.directory)
          (hsPkgs.CV)
          (hsPkgs.wxcore)
          (hsPkgs.wx)
          ];
        };
      exes = {
        "cvexample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wxcore)
            (hsPkgs.wx)
            (hsPkgs.CV)
            (hsPkgs.graphicstools)
            ];
          };
        };
      };
    }