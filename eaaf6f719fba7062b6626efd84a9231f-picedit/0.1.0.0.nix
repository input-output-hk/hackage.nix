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
        name = "picedit";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2016 Mahdi Dibaiee";
      maintainer = "mdibaiee@aol.com";
      author = "Mahdi Dibaiee";
      homepage = "https://github.com/mdibaiee/picedit#readme";
      url = "";
      synopsis = "simple image manipulation functions";
      description = "Simple set of functions for image manipulation: contrast, brightnesss, rotation, etc.";
      buildType = "Simple";
    };
    components = {
      "picedit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.JuicyPixels)
          (hsPkgs.hmatrix)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "picedit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.picedit)
            (hsPkgs.cli)
          ];
        };
      };
    };
  }