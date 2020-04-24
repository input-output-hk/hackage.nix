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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."CV" or ((hsPkgs.pkgs-errors).buildDepError "CV"))
          (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
          (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
          ];
        buildable = true;
        };
      exes = {
        "cvexample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."CV" or ((hsPkgs.pkgs-errors).buildDepError "CV"))
            (hsPkgs."graphicstools" or ((hsPkgs.pkgs-errors).buildDepError "graphicstools"))
            ];
          buildable = true;
          };
        };
      };
    }