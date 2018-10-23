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
        name = "list-t-text";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/list-t-text";
      url = "";
      synopsis = "A streaming text codec";
      description = "";
      buildType = "Simple";
    };
    components = {
      "list-t-text" = {
        depends  = [
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.list-t)
          (hsPkgs.mtl-prelude)
          (hsPkgs.base-prelude)
        ];
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.list-t-text)
            (hsPkgs.list-t)
            (hsPkgs.transformers)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
      };
    };
  }