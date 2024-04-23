{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "graphicstools"; version = "0.2.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."CV" or (errorHandler.buildDepError "CV"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
        ];
        buildable = true;
      };
      exes = {
        "cvexample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."CV" or (errorHandler.buildDepError "CV"))
            (hsPkgs."graphicstools" or (errorHandler.buildDepError "graphicstools"))
          ];
          buildable = true;
        };
      };
    };
  }