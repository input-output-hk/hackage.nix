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
        name = "gridbox";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "firas@zaidan.de";
      author = "Firas Zaidan";
      homepage = "https://github.com/zaidan/gridbox#readme";
      url = "";
      synopsis = "A grid box model";
      description = "Spans a 2D grid of n rows and m boxes with equal size.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gridbox)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }