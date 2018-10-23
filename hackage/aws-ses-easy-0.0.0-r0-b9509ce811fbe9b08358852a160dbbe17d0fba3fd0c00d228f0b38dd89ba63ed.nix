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
        name = "aws-ses-easy";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/aws-ses-easy#readme";
      url = "";
      synopsis = "Wrapper over Amazonka's SES";
      description = "Opinionated use of Amazonka's SES for ease";
      buildType = "Simple";
    };
    components = {
      "aws-ses-easy" = {
        depends  = [
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-ses)
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.lucid)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.text-conversions)
        ];
      };
      tests = {
        "aws-ses-easy-test-suite" = {
          depends  = [
            (hsPkgs.aws-ses-easy)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
      benchmarks = {
        "aws-ses-easy-benchmarks" = {
          depends  = [
            (hsPkgs.aws-ses-easy)
            (hsPkgs.base)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }