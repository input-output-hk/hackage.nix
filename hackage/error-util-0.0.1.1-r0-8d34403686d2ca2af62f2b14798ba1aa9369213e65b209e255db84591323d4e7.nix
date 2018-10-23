{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "error-util";
        version = "0.0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Piotr Młodawski <remdezx+github@gmail.com>";
      author = "Piotr Młodawski";
      homepage = "http://github.com/pmlodawski/error-util";
      url = "";
      synopsis = "Set of utils and operators for error handling";
      description = "Set of utils and operators for error handling";
      buildType = "Simple";
    };
    components = {
      "error-util" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }