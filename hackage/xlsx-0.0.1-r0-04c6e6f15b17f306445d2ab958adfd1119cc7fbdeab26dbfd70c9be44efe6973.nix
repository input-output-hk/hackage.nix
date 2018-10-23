{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "xlsx";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "qrilka@gmail.com";
      author = "Tim, Max, Kirill Zaborsky";
      homepage = "https://github.com/qrilka/xlsx";
      url = "";
      synopsis = "Simple and incomplete Excel file parser/writer";
      description = "This library can help you to get some data read and written in Office\nOpen XML xlsx format. Small subset of xlsx format is supported.\nTODO: add link to ECMA standard.";
      buildType = "Simple";
    };
    components = {
      "xlsx" = {
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
          (hsPkgs.digest)
          (hsPkgs.zlib)
          (hsPkgs.utf8-string)
          (hsPkgs.time)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.filepath)
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
            (hsPkgs.digest)
            (hsPkgs.zlib)
            (hsPkgs.utf8-string)
            (hsPkgs.time)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "data-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.xlsx)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }