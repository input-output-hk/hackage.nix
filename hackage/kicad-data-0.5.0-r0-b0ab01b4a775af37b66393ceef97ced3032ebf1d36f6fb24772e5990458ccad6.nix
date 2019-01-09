{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kicad-data"; version = "0.5.0"; };
      license = "MIT";
      copyright = "2018";
      maintainer = "kaspar@monostable.co.uk";
      author = "Kaspar Emanuel";
      homepage = "http://github.com/kasbah/haskell-kicad-data";
      url = "";
      synopsis = "Parser and writer for KiCad files.";
      description = "Parse and write <http://kicad-pcb.org/ KiCad> data\n(currently @.kicad_mod@ files only).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.lens-family)
          (hsPkgs.ieee754)
          (hsPkgs.pretty-compact)
          ];
        };
      tests = {
        "kicad-data-quickcheck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.lens-family)
            (hsPkgs.ieee754)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.pretty-compact)
            (hsPkgs.charsetdetect)
            (hsPkgs.encoding)
            (hsPkgs.kicad-data)
            ];
          };
        };
      };
    }