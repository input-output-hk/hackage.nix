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
        name = "cf";
        version = "0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mitchell.v.riley@gmail.com";
      author = "Mitchell Riley";
      homepage = "http://github.com/mvr/cf";
      url = "";
      synopsis = "Exact real arithmetic using continued fractions";
      description = "";
      buildType = "Simple";
    };
    components = {
      "cf" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }