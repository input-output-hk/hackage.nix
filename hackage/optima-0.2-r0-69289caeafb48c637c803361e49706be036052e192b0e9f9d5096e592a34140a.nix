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
        name = "optima";
        version = "0.2";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/optima";
      url = "";
      synopsis = "Simple command line interface arguments parser";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-data)
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.text)
          (hsPkgs.text-builder)
        ];
      };
      tests = {
        "demo" = {
          depends = [
            (hsPkgs.optima)
            (hsPkgs.attoparsec-data)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }