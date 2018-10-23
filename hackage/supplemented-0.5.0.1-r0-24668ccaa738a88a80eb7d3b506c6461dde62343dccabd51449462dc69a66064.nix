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
        name = "supplemented";
        version = "0.5.0.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/supplemented";
      url = "";
      synopsis = "Attoparsec extension for early termination";
      description = "";
      buildType = "Simple";
    };
    components = {
      "supplemented" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.supplemented)
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