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
        name = "octane";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/octane";
      url = "";
      synopsis = "A Rocket League replay parser.";
      description = "<https://github.com/tfausak/octane#readme>";
      buildType = "Simple";
    };
    components = {
      "octane" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.text)
        ];
      };
      exes = {
        "octane" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.octane)
          ];
        };
      };
      tests = {
        "octane-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.octane)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
      benchmarks = {
        "octane-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.octane)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }