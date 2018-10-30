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
        name = "cjk";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "http://github.com/batterseapower/cjk";
      url = "";
      synopsis = "Data about Chinese, Japanese and Korean characters and languages";
      description = "A Haskell interface to the most important information from the Unicode Unihan character\ndatabase and CC-CEDICT free Chinese-English dictionary.\n\nContributions of data from more sources are very welcome!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.text-icu)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cjk)
          ];
        };
      };
    };
  }