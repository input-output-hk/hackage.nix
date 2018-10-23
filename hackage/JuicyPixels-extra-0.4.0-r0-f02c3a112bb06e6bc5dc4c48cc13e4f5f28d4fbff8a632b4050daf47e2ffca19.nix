{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "JuicyPixels-extra";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
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
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
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