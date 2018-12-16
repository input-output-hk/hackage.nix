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
        name = "hspec-structured-formatter";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "flbulgarelli@yahoo.com.ar";
      author = "Franco Leonardo Bulgarelli";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Structured formatted for hspec";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hspec)
        ];
      };
    };
  }