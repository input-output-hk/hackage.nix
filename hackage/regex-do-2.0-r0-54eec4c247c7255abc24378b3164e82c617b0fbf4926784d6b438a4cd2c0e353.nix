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
        name = "regex-do";
        version = "2.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Imants Cekusins";
      author = "Imants Cekusins";
      homepage = "https://github.com/ciez/regex-do";
      url = "";
      synopsis = "PCRE wrapper";
      description = "format, search, replace (String | ByteString) with PCRE regex. Utf8-safe";
      buildType = "Simple";
    };
    components = {
      "regex-do" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.regex-base)
          (hsPkgs.regex-pcre)
          (hsPkgs.stringsearch)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.text)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.regex-base)
            (hsPkgs.regex-pcre)
            (hsPkgs.stringsearch)
            (hsPkgs.bytestring)
            (hsPkgs.array)
            (hsPkgs.text)
            (hsPkgs.regex-do)
          ];
        };
      };
    };
  }