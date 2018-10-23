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
        name = "simple-zipper";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Daniel Waterworth";
      maintainer = "da.waterworth@gmail.com";
      author = "Daniel Waterworth";
      homepage = "https://github.com/DanielWaterworth/simple-zipper";
      url = "";
      synopsis = "Zippers made slightly easier";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "simple-zipper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "simple-zipper-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.simple-zipper)
            (hsPkgs.hspec)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }