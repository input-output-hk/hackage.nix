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
        name = "data-function-meld";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Eric Brisco";
      maintainer = "eric.brisco@gmail.com";
      author = "Eric Brisco";
      homepage = "https://github.com/erisco/data-function-meld";
      url = "";
      synopsis = "Map the arguments and return value of functions.";
      description = "Map the arguments and return value of functions.";
      buildType = "Simple";
    };
    components = {
      "data-function-meld" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }