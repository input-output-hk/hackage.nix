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
        name = "pcg-random";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015. Christopher Chalmers <c.chalmers@me.com>";
      maintainer = "c.chalmers@me.com";
      author = "Christopher Chalmers";
      homepage = "http://github.com/cchalmers/pcg-random";
      url = "";
      synopsis = "Haskell bindings to the PCG random number generator.";
      description = "PCG is a family of simple fast space-efficient statistically good\nalgorithms for random number generation with better-than-typical\ncryptographic security. See http://http://www.pcg-random.org for more\ninformation.\n\nThis library implements bindings to the standard C implementation.\nThis includes the standard, unique, fast and single variants in the\npcg family. There is a pure implementation that can be used as a\ngenerator with the random package as well as a faster primitive api\nthat includes functions for generating common types.\n\nThe generators in this module are suitable for use in parallel but\nmake sure threads don't share the same generator or things will go\nhorribly wrong.";
      buildType = "Simple";
    };
    components = {
      "pcg-random" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.entropy)
          (hsPkgs.time)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }