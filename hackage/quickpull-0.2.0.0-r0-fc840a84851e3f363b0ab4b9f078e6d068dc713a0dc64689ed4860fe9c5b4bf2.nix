{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      build-test-gen = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "quickpull";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman, omari@smileystation.com";
      homepage = "http://www.github.com/massysett/quickpull";
      url = "";
      synopsis = "Generate Main module with QuickCheck tests";
      description = "Reads a tree of modules and outputs a module to run all\nQuickCheck tests.\nFor more information, please see documentation in the\n\"Quickpull\" module.";
      buildType = "Simple";
    };
    components = {
      "quickpull" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "quickpull" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
        "quickpull-test-gen" = {
          depends  = pkgs.lib.optionals (flags.build-test-gen) [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "quickpull-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }