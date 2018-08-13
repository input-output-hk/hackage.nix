{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "xml-indexed-cursor";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/xml-indexed-cursor";
      url = "";
      synopsis = "Indexed XML cursors similar to 'Text.XML.Cursor' from xml-conduit";
      description = "Please see <https://github.com/cdepillabout/xml-indexed-cursor#readme README.md>.";
      buildType = "Simple";
    };
    components = {
      "xml-indexed-cursor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
        ];
      };
      tests = {
        "xml-indexed-cursor-doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
        "xml-indexed-cursor-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-indexed-cursor)
          ];
        };
      };
    };
  }