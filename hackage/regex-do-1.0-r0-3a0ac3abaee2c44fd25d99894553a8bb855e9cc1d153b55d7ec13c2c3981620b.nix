{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "regex-do"; version = "1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Imants Cekusins";
      author = "Imants Cekusins";
      homepage = "https://github.com/ciez/regex-do";
      url = "";
      synopsis = "PCRE regex funs";
      description = "Convenience functions to search, replace, format String | ByteString with PCRE regex";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          depends = [
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