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
        name = "romkan";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Karl Voigtland";
      maintainer = "karl.voigtland@gmail.com";
      author = "Karl Voigtland";
      homepage = "https://github.com/karlvoigtland/romkan-hs";
      url = "";
      synopsis = "Japanese Romaji <-> Japanese Kana conversion library";
      description = "Romkan is a library to convert from Japanese Romaji to Japanese Kana and vice versa.\n\nHomepage is at <https://github.com/karlvoigtland/romkan-hs>.\n\nThis is a port of python-romkan: <http://www.soimort.org/python-romkan>.";
      buildType = "Simple";
    };
    components = {
      "romkan" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "test-romkan" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.attoparsec)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }