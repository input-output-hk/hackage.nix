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
        name = "potoki-core";
        version = "2.2.12";
      };
      license = "MIT";
      copyright = "(c) 2017, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/potoki-core";
      url = "";
      synopsis = "Low-level components of \"potoki\"";
      description = "Provides everything required for building custom instances of\nthe \\\"potoki\\\" abstractions.\nConsider this library to be the Internals modules of \\\"potoki\\\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.acquire)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.foldl)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.profunctors)
          (hsPkgs.ptr)
          (hsPkgs.scanner)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.acquire)
            (hsPkgs.attoparsec)
            (hsPkgs.foldl)
            (hsPkgs.ilist)
            (hsPkgs.split)
            (hsPkgs.potoki-core)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.rerebase)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs.criterion)
            (hsPkgs.potoki-core)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }