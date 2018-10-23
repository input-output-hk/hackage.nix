{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { visual = false; };
    package = {
      specVersion = "1.16";
      identifier = {
        name = "cartel";
        version = "0.14.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2014-2015 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/cartel";
      url = "";
      synopsis = "Specify Cabal files in Haskell";
      description = "By specifying your Cabal files in Haskell, you have the power\nof Haskell at your disposal to reduce redundancy.  You can\nalso read in trees of module names dynamically, which saves\nyou from manually maintaining lists of module names.\n\nSee the documentation in the \"Cartel\" module for details.";
      buildType = "Simple";
    };
    components = {
      "cartel" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "cartel-visual-test" = {
          depends  = pkgs.lib.optionals (flags.visual) [
            (hsPkgs.multiarg)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.quickpull)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "cartel-properties" = {
          depends  = [
            (hsPkgs.multiarg)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.quickpull)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }