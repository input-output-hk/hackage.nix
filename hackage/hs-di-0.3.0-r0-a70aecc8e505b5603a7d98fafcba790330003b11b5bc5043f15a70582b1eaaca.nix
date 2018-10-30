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
        name = "hs-di";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Milan Nagy";
      maintainer = "123.wizek@gmail.com";
      author = "Milan Nagy";
      homepage = "https://github.com/Wizek/hs-di#readme";
      url = "";
      synopsis = "Dependency Injection library for Haskell";
      description = "Dependency Injection library for Haskell to allow powerful unit testing and mocking (compile-time type-checked)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.compose-ltr)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "hs-di-cases" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.compose-ltr)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.containers)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "hs-di-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-di)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-expectations)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
            (hsPkgs.MissingH)
            (hsPkgs.compose-ltr)
            (hsPkgs.neat-interpolation)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.ghcid)
            (hsPkgs.foreign-store)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.interpolate)
            (hsPkgs.regex-tdfa)
          ];
        };
      };
    };
  }