{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wedged"; version = "4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(C) 2013,2015,2016,2018,2023 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://mathr.co.uk/wedged";
      url = "";
      synopsis = "Wedged postcard generator.";
      description = "Wedged (C) 2013,2015,2016,2018,2023 Claude Heiland-Allen.\n\nCopyleft: This is a free work, you can copy, distribute, and\nmodify it under the terms of the Free Art License\n<http://artlibre.org/licence/lal/en/>.\n\nUsage:\n\n> mkdir 7x5\n> cd 7x5\n> wedged 13 9 0.5 72\n> cd ..\n\n> mkdir 12x8\n> cd 12x8\n> wedged 14 9 0.8 72\n> cd ..\n\nUsage with Hugs:\n\n> mkdir 7x5\n> cd 7x5\n> runhugs -98 -P:../hugs -h1G ../Wedged.hs 13 9 0.5 72\n> cd ..\n\nOutput:\n\n189 SVG files in the 7x5 dir, totalling 4.5 MB, runtime 4m27s.\n\n115 SVG files in the 12x8 dir, totalling 2.7 MB, runtime 9m10s.\n\nRun time measured using a single core of a 4.3GHz AMD Ryzen 7 2700X\nEight-Core Processor.\n\nInformation:\n\nVersion 0 worked with GHC 7.8 and Diagrams 1.2 with the Cairo backend.\n\nVersion 1 was updated to work with GHC 8.0 and Diagrams 1.3 with the\nCairo backend.\n\nVersion 2 was updated to work with GHC 8.4 and Diagrams 1.4 with the\nRasterific backend.\n\nVersion 3 is updated to work with GHC 8.6 and Diagrams 1.4 with the\nPostscript backend.\n\nVersion 4 is updated to work with GHC 8.0 through 9.4,\nwith fewer dependencies.\nHugs compatible, but fails at runtime with an arithmetic overflow.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wedged" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }