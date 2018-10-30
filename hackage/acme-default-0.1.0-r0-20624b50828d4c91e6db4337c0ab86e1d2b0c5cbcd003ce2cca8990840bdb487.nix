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
      specVersion = "1.10";
      identifier = {
        name = "acme-default";
        version = "0.1.0";
      };
      license = "LicenseRef-Apache";
      copyright = "Copyright 2016 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "http://hub.darcs.net/esz/acme-default";
      url = "";
      synopsis = "A class for types with a distinguished aesthetically pleasing value";
      description = "This package defines a type class for types with certain\ndistinguished values that someone considers to be aesthetically\npleasing.  Such a value is commonly referred to as a /default/\nvalue.\n\nThis package exists to introduce artistic variety regarding the\naesthetics of Haskell's base types, but is otherwise identical in\npurpose to\n<https://hackage.haskell.org/package/data-default data-default>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }