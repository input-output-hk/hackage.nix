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
        name = "xml-query-xml-types";
        version = "0.4.1";
      };
      license = "MIT";
      copyright = "(c) 2015, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/xml-query-xml-types";
      url = "";
      synopsis = "An interpreter of \"xml-query\" queries for the \"xml-types\" documents";
      description = "";
      buildType = "Simple";
    };
    components = {
      "xml-query-xml-types" = {
        depends  = [
          (hsPkgs.html-entities)
          (hsPkgs.xml-query)
          (hsPkgs.xml-types)
          (hsPkgs.text)
          (hsPkgs.free)
          (hsPkgs.success)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
        ];
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.xml-query)
            (hsPkgs.xml-query-xml-types)
            (hsPkgs.xml-types)
            (hsPkgs.xml-conduit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.data-default-class)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
          ];
        };
      };
    };
  }