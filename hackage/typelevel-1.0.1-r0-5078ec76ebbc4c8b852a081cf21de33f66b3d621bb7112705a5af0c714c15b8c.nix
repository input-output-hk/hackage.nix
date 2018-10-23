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
        name = "typelevel";
        version = "1.0.1";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2014 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/typelevel";
      url = "";
      synopsis = "Useful type level operations (type families and related operators).";
      description = "";
      buildType = "Simple";
    };
    components = {
      "typelevel" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }