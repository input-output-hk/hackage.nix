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
        name = "numeric-qq";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/numeric-qq";
      url = "";
      synopsis = "Quasi-quoters for numbers of different bases";
      description = "Quasi-quoters for numbers of different bases";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.template-haskell)
          (hsPkgs.loch-th)
          (hsPkgs.placeholders)
          (hsPkgs.base)
        ];
      };
      tests = {
        "internal-tests" = {
          depends  = [
            (hsPkgs.HTF)
            (hsPkgs.template-haskell)
            (hsPkgs.loch-th)
            (hsPkgs.placeholders)
            (hsPkgs.base)
          ];
        };
      };
    };
  }