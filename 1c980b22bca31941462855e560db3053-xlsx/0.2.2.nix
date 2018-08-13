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
        name = "xlsx";
        version = "0.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "qrilka@gmail.com";
      author = "Tim, Max, Kirill Zaborsky";
      homepage = "https://github.com/qrilka/xlsx";
      url = "";
      synopsis = "Simple and incomplete Excel file parser/writer";
      description = "This library can help you to get some data read and written in Office\nOpen XML xlsx format. Small subset of xlsx format is supported.\n\nFor examples look into \"Codec.Xlsx\".\n\nFormat is covered by ECMA-376 standard:\n<http://www.ecma-international.org/publications/standards/Ecma-376.htm>\n\n4th edition of the standard with the transitional schema is used for this library.";
      buildType = "Simple";
    };
    components = {
      "xlsx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary-search)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.digest)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.old-locale)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-types)
          (hsPkgs.zip-archive)
          (hsPkgs.zlib)
          (hsPkgs.base64-bytestring)
        ];
      };
      tests = {
        "data-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.xlsx)
            (hsPkgs.xml-conduit)
            (hsPkgs.smallcheck)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.lens)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }