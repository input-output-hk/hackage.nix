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
        name = "QuickCheck-GenT";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2013, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/QuickCheck-GenT";
      url = "";
      synopsis = "A GenT monad transformer for QuickCheck library.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "QuickCheck-GenT" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.base)
        ];
      };
    };
  }