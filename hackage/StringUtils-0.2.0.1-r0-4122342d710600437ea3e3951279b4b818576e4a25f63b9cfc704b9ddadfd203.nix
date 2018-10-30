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
        name = "StringUtils";
        version = "0.2.0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "luca_ciciriello@hotmail.com";
      author = "Luca Ciciriello";
      homepage = "";
      url = "";
      synopsis = "String manipulation utilities";
      description = "String manipulation utilities (substring, replace, find, etc.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }