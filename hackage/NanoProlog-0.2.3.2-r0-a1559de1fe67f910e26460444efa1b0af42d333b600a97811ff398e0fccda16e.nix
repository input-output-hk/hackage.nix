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
      specVersion = "1.6";
      identifier = {
        name = "NanoProlog";
        version = "0.2.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jurriën Stutterheim <j.stutterheim@uu.nl>";
      author = "Doaitse Swierstra, Jurriën Stutterheim";
      homepage = "";
      url = "";
      synopsis = "Very small  interpreter for a Prolog-like language";
      description = "This package was developed to demonstrate the ideas behind\nthe Prolog language. It contains a very small interpreter\n(@Language.Prolog.Nanoprolog@) which can be run on its\nown. It reads a file with definitions, and then prompts\nfor a goal. All possibe solutions are printed, preceded by\na tree showing which rules were applied in which order.\n\nThe file @royals.pro@ contains a description of part of the Dutch royal family, whereas the file\n@tc.pro@ shows unification at work in a very small type inferencer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.uu-parsinglib)
          (hsPkgs.ListLike)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "nano-prolog" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.uu-parsinglib)
          ];
        };
      };
    };
  }