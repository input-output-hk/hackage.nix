{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Earley";
        version = "0.10.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 Olle Fredriksson";
      maintainer = "fredriksson.olle@gmail.com";
      author = "Olle Fredriksson";
      homepage = "";
      url = "";
      synopsis = "Parsing all context-free grammars using Earley's algorithm.";
      description = "See <https://www.github.com/ollef/Earley> for more\ninformation and\n<https://github.com/ollef/Earley/tree/master/examples> for\nexamples.";
      buildType = "Simple";
    };
    components = {
      "Earley" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ListLike)
        ];
      };
      exes = {
        "earley-english" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Earley)
            (hsPkgs.unordered-containers)
          ];
        };
        "earley-expr" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Earley)
          ];
        };
        "earley-expr2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Earley)
          ];
        };
        "earley-mixfix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Earley)
            (hsPkgs.unordered-containers)
          ];
        };
        "earley-very-ambiguous" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Earley)
          ];
        };
        "earley-words" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Earley)
          ];
        };
        "earley-infinite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Earley)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Earley)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.parsec)
            (hsPkgs.ListLike)
          ];
        };
      };
    };
  }