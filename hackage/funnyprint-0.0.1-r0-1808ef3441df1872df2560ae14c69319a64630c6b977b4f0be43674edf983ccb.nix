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
        name = "funnyprint";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Yuriy Pitomets";
      author = "";
      homepage = "https://github.com/Pitometsu/funnyprint#readme";
      url = "";
      synopsis = "funnyPrint function to colorize GHCi output.";
      description = "see FunnyPrint.funnyPrint.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hscolour)
          (hsPkgs.ipprint)
        ];
      };
      tests = {
        "funnyprint-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hscolour)
            (hsPkgs.ipprint)
            (hsPkgs.funnyprint)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
      benchmarks = {
        "funnyprint-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hscolour)
            (hsPkgs.ipprint)
            (hsPkgs.funnyprint)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }