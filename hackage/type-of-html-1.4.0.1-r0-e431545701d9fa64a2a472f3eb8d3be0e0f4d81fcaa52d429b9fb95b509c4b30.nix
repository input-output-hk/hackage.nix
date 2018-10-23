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
        name = "type-of-html";
        version = "1.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 - 2018, Florian Knupfer";
      maintainer = "fknupfer@gmail.com";
      author = "Florian Knupfer";
      homepage = "https://github.com/knupfer/type-of-html";
      url = "";
      synopsis = "High performance type driven html generation.";
      description = "This library makes most invalid html documents compile time errors and uses advanced type level features to realise compile time computations.";
      buildType = "Simple";
    };
    components = {
      "type-of-html" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.double-conversion)
        ];
      };
      tests = {
        "value" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.type-of-html)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
        "type" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
      benchmarks = {
        "reduction" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.type-of-html)
          ];
        };
        "alloc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.type-of-html)
            (hsPkgs.deepseq)
            (hsPkgs.weigh)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.temporary)
          ];
        };
        "perf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.type-of-html)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-html)
            (hsPkgs.criterion)
            (hsPkgs.random)
          ];
        };
      };
    };
  }