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
      specVersion = "1.8";
      identifier = {
        name = "hquery";
        version = "0.1.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Tycho Andersen <tycho@tycho.ws>";
      author = "Tycho Andersen";
      homepage = "";
      url = "";
      synopsis = "A query language for transforming HTML5";
      description = "Hquery is a tool for transforming XmlHtml trees. It is an\nimplementation of Lift's CssSelectors in haskell. It operates over\n\"xmlhtml\" 'Node's, allowing you to build transformers for creating\nand modifying template trees. See \"Text.Hquery\" for some examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.xmlhtml)
          (hsPkgs.text)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "TransformTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hquery)
            (hsPkgs.xmlhtml)
            (hsPkgs.HUnit)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
          ];
        };
        "ParserTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hquery)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.parsec)
          ];
        };
        "UtilsTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hquery)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.xmlhtml)
            (hsPkgs.text)
          ];
        };
      };
    };
  }