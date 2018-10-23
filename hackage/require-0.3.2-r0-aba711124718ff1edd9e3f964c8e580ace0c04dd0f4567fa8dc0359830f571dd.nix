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
        name = "require";
        version = "0.3.2";
      };
      license = "Apache-2.0";
      copyright = "2018 Theam";
      maintainer = "hackers@theam.io";
      author = "The Agile Monkeys";
      homepage = "https://github.com/theam/require#readme";
      url = "";
      synopsis = "Scrap your qualified import clutter";
      description = "See <https://theam.github.io/require>";
      buildType = "Simple";
    };
    components = {
      "require" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.inliterate)
          (hsPkgs.megaparsec)
          (hsPkgs.optparse-generic)
          (hsPkgs.text)
          (hsPkgs.universum)
        ];
      };
      exes = {
        "autorequirepp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.inliterate)
            (hsPkgs.megaparsec)
            (hsPkgs.optparse-generic)
            (hsPkgs.require)
            (hsPkgs.text)
            (hsPkgs.universum)
          ];
        };
        "requirepp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.inliterate)
            (hsPkgs.megaparsec)
            (hsPkgs.optparse-generic)
            (hsPkgs.require)
            (hsPkgs.text)
            (hsPkgs.universum)
          ];
        };
      };
      tests = {
        "require-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.inliterate)
            (hsPkgs.megaparsec)
            (hsPkgs.optparse-generic)
            (hsPkgs.require)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.text)
            (hsPkgs.universum)
          ];
        };
      };
      benchmarks = {
        "require-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.directory)
            (hsPkgs.inliterate)
            (hsPkgs.megaparsec)
            (hsPkgs.optparse-generic)
            (hsPkgs.require)
            (hsPkgs.text)
            (hsPkgs.universum)
          ];
        };
      };
    };
  }