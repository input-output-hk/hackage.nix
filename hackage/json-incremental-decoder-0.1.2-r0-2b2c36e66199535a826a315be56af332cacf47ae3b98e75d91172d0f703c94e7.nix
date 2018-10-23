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
        name = "json-incremental-decoder";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/json-incremental-decoder";
      url = "";
      synopsis = "Incremental JSON parser with early termination and a declarative DSL";
      description = "";
      buildType = "Simple";
    };
    components = {
      "json-incremental-decoder" = {
        depends  = [
          (hsPkgs.monad-par)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.scientific)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.hashable)
          (hsPkgs.success)
          (hsPkgs.matcher)
          (hsPkgs.interspersed)
          (hsPkgs.unsequential)
          (hsPkgs.supplemented)
          (hsPkgs.transformers)
          (hsPkgs.ghc-prim)
          (hsPkgs.base)
          (hsPkgs.base-prelude)
        ];
      };
      tests = {
        "parsing-test" = {
          depends  = [
            (hsPkgs.json-incremental-decoder)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.rebase)
          ];
        };
      };
    };
  }