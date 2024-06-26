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
    flags = { containers-in-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "AERN-RnToRm"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 Michal Konecny";
      maintainer = "mik@konecny.aow.cz";
      author = "Michal Konecny (Aston University)";
      homepage = "";
      url = "";
      synopsis = "polynomial function enclosures (PFEs) approximating exact real functions";
      description = "AERN-RnToRm provides\ndatatypes and abstractions for approximating functions\nof type @D -> R^m@ where @D@ is a bounded interval in @R^n@\nwith non-empty interior.\n\nAbstractions are provided via 4 type classes:\n\n* ERUnitFnBase:\ngeneralises polynomials with floating point coefficients.\n(Not exported here, used only internally.)\n\n* ERFnApprox:\ngeneralises functions enclosures on a certain unspecified domain.\n\n* ERUnitFnApprox (extends ERFnApprox): generalises function graph enclosures\non the domain @[-1,1]^n@.\n(Not exported here, used only internally.)\n\n* ERFnDomApprox (extends ERFnApprox):\ngeneralises function enclosures over a specified and queriable domain box\n(instance of class DomainBox).\n\nAt all levels, all field operations are supported as well as\nsome elementary operations, namely exp, sin and cos.\nLog and sqrt are planned to be added soon.\n\nImplementations of ERUnitFnBase:\n\n* ERChebPoly\n\nBy using the Chebyshev basis on domain @[-1,1]^n@,\nwe gain simple and optimally rounding degree reduction\nas well as relatively simple handling of rounding\nin other operations.\n\nImplementations of ERUnitFnApprox:\n\n* ERFnInterval\n\nImplementations of ERFnDomApprox:\n\n* ERFnDomTranslApprox:\nbuilds a basic implementation\nusing an instance of ERUnitFnApprox.\n\n* ERFnTuple:\nextends another implementation of ERFnDomApprox\nto work with lists of functions simultaneously.\n\n* ERFnDomEdgesApprox:\nseparately enclose a function on its domain box\nas well as on all the domain's hyper-edges\n(including the corners) using\nanother implementation of ERFnDomApprox.\n\n* ERFnPiecewise:\nallows the domain box to be bisected\nto an arbitrary finite depth\nand uses another implementation of ERFnDomApprox\nto approximate the function on each segment.\n\nSimple examples of usage can be found in /tests/: Demo.hs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.containers-in-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."AERN-Real" or (errorHandler.buildDepError "AERN-Real"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."AERN-Real" or (errorHandler.buildDepError "AERN-Real"))
          ];
        buildable = true;
      };
    };
  }