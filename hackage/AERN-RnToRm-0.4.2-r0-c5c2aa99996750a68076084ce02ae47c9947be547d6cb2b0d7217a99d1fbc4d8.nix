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
      identifier = { name = "AERN-RnToRm"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 Michal Konecny";
      maintainer = "mik@konecny.aow.cz";
      author = "Michal Konecny (Aston University)";
      homepage = "";
      url = "";
      synopsis = "polynomial function enclosures (PFEs) approximating exact real functions";
      description = "AERN-RnToRm provides\ndatatypes and abstractions for approximating functions\nof type @D -> R^m@ where @D@ is a bounded interval in @R^n@\nwith non-empty interior.\n\nThe main datatype are function enclosures whose boundaries are\npiece-wise polynomial with a bounded degree.  (This degree can\nbe set arbitrarily high or as low as 0.)\nThis datatype is supported by safely rounding operations\nwhose precision can be increased arbitrarily, so that they\nall converge to the exact operations.\nField operations, integration, maximisation and some elementary operations\n(namely exp, sin, cos) are among those already implemented.\n\nFor an architectural overview, see module \"Data.Number.ER.RnToRm\".\n\nA mathematical description of the very basics as well as a brief comparison\nwith Taylor Models is included in the\npaper <http://www-users.aston.ac.uk/~konecnym/papers/cfv08.html>.\n\nSimple examples of usage can be found in module @Demo.hs@ in folder @tests@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.containers-in-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."AERN-Real" or (errorHandler.buildDepError "AERN-Real"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."AERN-Real" or (errorHandler.buildDepError "AERN-Real"))
            ];
        buildable = true;
        };
      };
    }