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
        name = "url-decoders";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/url-decoders";
      url = "";
      synopsis = "Decoders for URL-encoding (aka Percent-encoding)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "url-decoders" = {
        depends  = [
          (hsPkgs.unordered-containers)
          (hsPkgs.binary-parser)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.http-types)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rerebase)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.url-decoders)
          ];
        };
      };
      benchmarks = {
        "primary-benchmark" = {
          depends  = [
            (hsPkgs.url-decoders)
            (hsPkgs.http-types)
            (hsPkgs.criterion)
            (hsPkgs.rerebase)
          ];
        };
        "comparison-benchmark" = {
          depends  = [
            (hsPkgs.url-decoders)
            (hsPkgs.http-types)
            (hsPkgs.criterion)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }