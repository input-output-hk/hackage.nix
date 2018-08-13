{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "distance";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2017 Alexander Thiemann";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/distance#readme";
      url = "";
      synopsis = "Useful distance datatype and functions";
      description = "A data type for distances with some useful utility functions";
      buildType = "Simple";
    };
    components = {
      "distance" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }