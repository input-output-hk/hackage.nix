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
        version = "1.5.1";
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
        depends  = [
          (hsPkgs.stm)
          (hsPkgs.profunctors)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.potoki-core)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }