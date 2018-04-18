{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kanji";
          version = "1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "colingw@gmail.com";
        author = "Colin Woodbury";
        homepage = "https://github.com/fosskers/nanq";
        url = "";
        synopsis = "Perform 漢字検定 (National Kanji Exam) level analysis on Japanese Kanji.";
        description = "Perform 漢字検定 (National Kanji Exam) level analysis on Japanese Kanji.";
        buildType = "Simple";
      };
      components = {
        kanji = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.microlens
            hsPkgs.text
          ];
        };
      };
    }