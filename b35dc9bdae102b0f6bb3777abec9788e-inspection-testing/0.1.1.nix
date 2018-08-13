{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "inspection-testing";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "2017 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/inspection-testing";
      url = "";
      synopsis = "GHC plugin to do inspection testing";
      description = "Some carefully crafted libraries make promises to their\nusers beyond functionality and performance.\n\nExamples are: Fusion libraries promise intermediate data\nstructures to be eliminated. Generic programming libraries promise\nthat the generic implementation is identical to the\nhand-written one. Some libraries may promise allocation-free\nor branch-free code.\n\nConventionally, the modus operandi in all these cases is\nthat the library author manually inspects the (intermediate or\nfinal) code produced by the compiler. This is not only\ntedious, but makes it very likely that some change, either\nin the library itself or the surrounding eco-system,\nbreaks the library’s promised without anyone noticing.\n\nThis package provides a disciplined way of specifying such\nproperties, and have them checked by the compiler. This way,\nthis checking can be part of the ususal development cycle\nand regressions caught early.\n\nSee the documentation in \"Test.Inspection\" or the project\nwebpage for more examples and more information.";
      buildType = "Simple";
    };
    components = {
      "inspection-testing" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "NS_NP" = {
          depends  = [
            (hsPkgs.inspection-testing)
            (hsPkgs.base)
          ];
        };
        "generic-lens" = {
          depends  = [
            (hsPkgs.inspection-testing)
            (hsPkgs.base)
            (hsPkgs.generic-lens)
          ];
        };
        "simple" = {
          depends  = [
            (hsPkgs.inspection-testing)
            (hsPkgs.base)
          ];
        };
        "fusion" = {
          depends  = [
            (hsPkgs.inspection-testing)
            (hsPkgs.base)
          ];
        };
        "text" = {
          depends  = [
            (hsPkgs.inspection-testing)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }