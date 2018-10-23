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
        name = "Hoed";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2000 Andy Gill, (c) 2010 University of Kansas, (c) 2013-2018 Maarten Faddegon";
      maintainer = "hoed@maartenfaddegon.nl";
      author = "Maarten Faddegon";
      homepage = "https://github.com/MaartenFaddegon/Hoed";
      url = "";
      synopsis = "Lightweight algorithmic debugging.";
      description = "Hoed is a tracer and debugger for the programming language Haskell.\n\nTo locate a defect with Hoed you annotate suspected functions and compile as usual. Then you run your program, information about the annotated functions is collected. Finally you connect to a debugging session.\n";
      buildType = "Simple";
    };
    components = {
      "Hoed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.clock)
          (hsPkgs.deepseq)
          (hsPkgs.process)
          (hsPkgs.libgraph)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-text)
          (hsPkgs.cereal-vector)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.QuickCheck)
          (hsPkgs.open-browser)
          (hsPkgs.primitive)
          (hsPkgs.semigroups)
          (hsPkgs.strict)
          (hsPkgs.template-haskell)
          (hsPkgs.terminal-size)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.uniplate)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "test-queens" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Hoed)
          ];
        };
        "test-1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Hoed)
            (hsPkgs.process)
          ];
        };
        "test-2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Hoed)
            (hsPkgs.process)
          ];
        };
        "test-3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Hoed)
            (hsPkgs.process)
          ];
        };
        "test-4" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Hoed)
            (hsPkgs.process)
          ];
        };
        "test-5" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Hoed)
            (hsPkgs.process)
          ];
        };
        "test-6" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Hoed)
            (hsPkgs.process)
          ];
        };
        "test-7" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Hoed)
            (hsPkgs.process)
          ];
        };
        "test-th" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.Hoed)
            (hsPkgs.process)
          ];
        };
      };
    };
  }