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
        name = "funnyprint";
        version = "0.0.2";
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
      "funnyprint" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hscolour)
          (hsPkgs.ipprint)
        ];
      };
      tests = {
        "funnyprint-test-suite" = {
          depends  = [
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
          depends  = [
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