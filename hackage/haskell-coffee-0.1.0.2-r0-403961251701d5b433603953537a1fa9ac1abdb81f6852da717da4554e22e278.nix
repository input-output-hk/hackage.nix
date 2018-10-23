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
        name = "haskell-coffee";
        version = "0.1.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2013 Kevin van Rooijen";
      maintainer = "kevin.van.rooijen@gmail.com";
      author = "Kevin van Rooijen";
      homepage = "";
      url = "";
      synopsis = "Simple CoffeeScript API";
      description = "";
      buildType = "Simple";
    };
    components = {
      "haskell-coffee" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
        ];
      };
    };
  }