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
        name = "random-strings";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Michael Hatfield";
      maintainer = "github@michael-hatfield.com";
      author = "Michael Hatfield";
      homepage = "https://github.com/mikehat/random-strings";
      url = "";
      synopsis = "Generate random strings with specific qualities";
      description = "Useful for generating test/benchmark data, the 'Test.RandomStrings' module\nprovides functions for generating random character strings in the ASCII\nrange.  You can specify probabilities for the alphabet-range chars and\ncapital case characters.";
      buildType = "Simple";
    };
    components = {
      "random-strings" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
        ];
      };
      exes = {
        "readme-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random-strings)
          ];
        };
      };
      tests = {
        "test-basics" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random-strings)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
          ];
        };
        "test-randomness" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random-strings)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }