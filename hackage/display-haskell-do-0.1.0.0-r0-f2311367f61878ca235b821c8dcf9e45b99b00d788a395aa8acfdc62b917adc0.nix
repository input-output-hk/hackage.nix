{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "display-haskell-do"; version = "0.1.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "2017 Kit Freddura";
      maintainer = "kit@theam.io";
      author = "Kit Freddura";
      homepage = "https://github.com/KitFreddura/HaskellDO-Display";
      url = "";
      synopsis = "A display API for HaskellDO";
      description = "A library which defines Display types for use in HaskellDO to render media";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.aeson) ]; };
      };
    }