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
        name = "xlsx";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "qrilka@gmail.com";
      author = "Tim, Max, Kirill Zaborsky";
      homepage = "https://github.com/qrilka/xlsx";
      url = "";
      synopsis = "Simple and incomplete Excel file parser/writer";
      description = "This library can help you to get some data read and written in Office\nOpen XML xlsx format. Small subset of xlsx format is supported.\n\nFor examples look into \"Codec.Xlsx\".\n\nFormat is covered by ECMA-376 standard:\n<http://www.ecma-international.org/publications/standards/Ecma-376.htm>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.lens)
          (hsPkgs.conduit)
          (hsPkgs.xml-types)
          (hsPkgs.xml-conduit)
          (hsPkgs.zip-archive)
          (hsPkgs.digest)
          (hsPkgs.zlib)
          (hsPkgs.utf8-string)
          (hsPkgs.time)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.filepath)
          (hsPkgs.data-default)
        ];
      };
      exes = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.conduit)
            (hsPkgs.xml-types)
            (hsPkgs.xml-conduit)
            (hsPkgs.zip-archive)
            (hsPkgs.lens)
            (hsPkgs.digest)
            (hsPkgs.zlib)
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.filepath)
            (hsPkgs.data-default)
          ];
        };
      };
      tests = {
        "data-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.old-time)
            (hsPkgs.xlsx)
            (hsPkgs.smallcheck)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }