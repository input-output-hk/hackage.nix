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
        name = "koellner-phonetic";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "\"Marc Weber\"";
      author = "";
      homepage = "";
      url = "";
      synopsis = "\"map German words to code representing pronunciation\"";
      description = "\"German soundex like code, see Wikipedia http://de.wikipedia.org/wiki/K%C3%B6lner_Phonetik\"";
      buildType = "Simple";
    };
    components = {
      "koellner-phonetic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HUnit)
        ];
      };
      tests = {
        "test-koellner-phonetic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }