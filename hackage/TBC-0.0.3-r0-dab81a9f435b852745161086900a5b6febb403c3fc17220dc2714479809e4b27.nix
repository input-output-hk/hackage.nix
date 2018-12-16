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
      specVersion = "1.7";
      identifier = {
        name = "TBC";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Peter Gammie, Mark Wotton";
      maintainer = "peteg42@gmail.com";
      author = "Peter Gammie, Mark Wotton";
      homepage = "";
      url = "";
      synopsis = "Testing By Convention";
      description = "TBC is a harness for running tests, relying on other libraries such\nas QuickCheck and HUnit to do the actual testing. TBC lets you skip a\nlot of boilerplate by adopting naming conventions for tests. It also\nsupports test-driven development (TDD) by running as many tests as it\ncan compile, whatever the state of the project as a whole.\nFor further information see the examples that accompany the\ndistribution.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
        ];
      };
      exes = {
        "tbc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }