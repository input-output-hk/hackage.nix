{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-util";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cutsea110@gmail.com";
      author = "Katsutoshi Itoh";
      homepage = "https://github.com/cutsea110/data-util";
      url = "";
      synopsis = "utilities for handle data";
      description = "utilities for handle data";
      buildType = "Simple";
    };
    components = {
      "data-util" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }