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
        name = "skulk";
        version = "0.1.3.0";
      };
      license = "MIT";
      copyright = "(C) Ivan Appel 2016";
      maintainer = "ivan.appel@gmail.com";
      author = "Ivan Appel";
      homepage = "http://github.com/geekyfox/skulk";
      url = "";
      synopsis = "Eclectic collection of utility functions";
      description = "Eclectic collection of utility functions";
      buildType = "Simple";
    };
    components = {
      "skulk" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.skulk)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }