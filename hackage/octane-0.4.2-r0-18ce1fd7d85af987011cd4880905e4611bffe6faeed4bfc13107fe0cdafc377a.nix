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
        name = "octane";
        version = "0.4.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/octane#readme";
      url = "";
      synopsis = "Parse Rocket League replays.";
      description = "Octane parses Rocket League replays.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-bits)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.deepseq)
          (hsPkgs.text)
        ];
      };
      exes = {
        "octane" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.octane)
          ];
        };
      };
      tests = {
        "octane-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-bits)
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-bits)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.octane)
          ];
        };
      };
    };
  }