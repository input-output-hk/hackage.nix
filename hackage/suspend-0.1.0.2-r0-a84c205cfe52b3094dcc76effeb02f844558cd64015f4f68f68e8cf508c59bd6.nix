{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "suspend";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Petr Pilař 2012";
      maintainer = "Petr Pilař <maintainer+the.palmik@gmail.com>";
      author = "Petr Pilař";
      homepage = "";
      url = "";
      synopsis = "Simple package that allows for long thread suspensions.";
      description = "Simple package that allows for long thread suspensions. Uses newtype wrapper (of Int64 at the moment) to represent delay.";
      buildType = "Simple";
    };
    components = {
      "suspend" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }