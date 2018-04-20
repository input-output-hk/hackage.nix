{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nanq";
          version = "1.1.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "colingw@gmail.com";
        author = "Colin Woodbury";
        homepage = "https://github.com/fosskers/nanq";
        url = "";
        synopsis = "Performs 漢字検定 (National Kanji Exam) level analysis on given Kanji.";
        description = "`nanq` can inform the user of a number of statistics\nregarding Kanji and the Nation Kanji Examination, also\nknown as 漢字検定 or 漢検. In the most simple case,\nit will reveal what inputed Kanji belong to what\nLevel of the exam.";
        buildType = "Simple";
      };
      components = {
        nanq = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.microlens
            hsPkgs.text
          ];
        };
        exes = {
          nanq = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.microlens
              hsPkgs.text
            ];
          };
        };
      };
    }