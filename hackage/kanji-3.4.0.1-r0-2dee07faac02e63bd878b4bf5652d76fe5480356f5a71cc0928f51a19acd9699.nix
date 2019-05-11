{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "kanji"; version = "3.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2011 - 2019 Colin Woodbury";
      maintainer = "colin@fosskers.ca";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/kanji";
      url = "";
      synopsis = "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji";
      description = "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          ];
        };
      exes = {
        "kanji" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.aeson-pretty)
            (hsPkgs.kanji)
            (hsPkgs.microlens)
            (hsPkgs.microlens-aeson)
            (hsPkgs.optparse-applicative)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "kanji-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.HUnit-approx)
            (hsPkgs.kanji)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      benchmarks = {
        "kanji-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.criterion)
            (hsPkgs.kanji)
            ];
          };
        };
      };
    }