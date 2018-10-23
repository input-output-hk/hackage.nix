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
        name = "kanji";
        version = "3.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2011 - 2018 Colin Woodbury";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/kanji";
      url = "";
      synopsis = "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji";
      description = "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji.";
      buildType = "Simple";
    };
    components = {
      "kanji" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.text)
        ];
      };
      exes = {
        "kanji" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.kanji)
            (hsPkgs.microlens)
            (hsPkgs.microlens-aeson)
            (hsPkgs.microlens-platform)
            (hsPkgs.optparse-applicative)
            (hsPkgs.protolude)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "kanji-test" = {
          depends  = [
            (hsPkgs.HUnit-approx)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.kanji)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "kanji-bench" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.kanji)
            (hsPkgs.text)
          ];
        };
      };
    };
  }