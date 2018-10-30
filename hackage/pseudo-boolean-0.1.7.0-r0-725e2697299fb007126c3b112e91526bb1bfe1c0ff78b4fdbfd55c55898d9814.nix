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
      specVersion = "1.10";
      identifier = {
        name = "pseudo-boolean";
        version = "0.1.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/pseudo-boolean";
      url = "";
      synopsis = "Reading/Writing OPB/WBO files used in pseudo boolean competition";
      description = "Reading\\/Writing OPB\\/WBO files used in pseudo boolean competition";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.megaparsec)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.dlist)
          (hsPkgs.attoparsec)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.void)
        ];
      };
      tests = {
        "TestPBFile" = {
          depends  = [
            (hsPkgs.pseudo-boolean)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }