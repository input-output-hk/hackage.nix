{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      llvm-fast = false;
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "brainheck";
        version = "0.1.0.10";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Brainh*ck interpreter in haskell";
      description = "Brainh*ck interpreter written in haskell and taking advantage of several advanced libraries";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          (hsPkgs.recursion)
          (hsPkgs.text)
          (hsPkgs.lens)
          (hsPkgs.megaparsec)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "brainheck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brainheck)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "brainheck-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.brainheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }