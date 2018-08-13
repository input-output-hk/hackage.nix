{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "JuicyPixels-extra";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
      author = "Mark Karpov <markkarpov@openmailbox.org>";
      homepage = "https://github.com/mrkkrp/JuicyPixels-extra";
      url = "";
      synopsis = "Efficiently scale, crop, flip images with JuicyPixels";
      description = "Efficiently scale, crop, flip images with JuicyPixels.";
      buildType = "Simple";
    };
    components = {
      "JuicyPixels-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.JuicyPixels)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.JuicyPixels)
            (hsPkgs.JuicyPixels-extra)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.JuicyPixels)
            (hsPkgs.JuicyPixels-extra)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }