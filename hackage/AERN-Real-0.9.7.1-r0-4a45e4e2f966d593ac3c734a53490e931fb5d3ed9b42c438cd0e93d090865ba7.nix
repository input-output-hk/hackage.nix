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
    flags = { containers-in-base = false; use-hmpfr = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "AERN-Real"; version = "0.9.7.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 Michal Konecny, Amin Farjudian, Jan Duracz ";
      maintainer = "mik@konecny.aow.cz";
      author = "Michal Konecny (Aston University)";
      homepage = "";
      url = "";
      synopsis = "arbitrary precision interval arithmetic for approximating exact real numbers";
      description = "Datatypes and abstractions for approximating exact real numbers\nand a basic arithmetic over such approximations.\nThe main datatype is interval with arbitrary precision endpoints\nsupported by safely rounding field and elementary operations\nwhose precision can be increased arbitrarily, so that they\nall converge to the exact operations.\n\nThe design of the library is inspired to some degree\nby Mueller's iRRAM and Lambov's RealLib\n(both are C++ libraries for exact real arithmetic).\n\nFor an architectural overview, see module \"Data.Number.ER.Real\".\n\nSimple examples of usage can be found in module @Demo.hs@ in folder @tests@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.containers-in-base
          then if flags.use-hmpfr
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
              (hsPkgs."hmpfr" or (errorHandler.buildDepError "hmpfr"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
              ]
          else if flags.use-hmpfr
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
              (hsPkgs."hmpfr" or (errorHandler.buildDepError "hmpfr"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
              ];
        buildable = true;
        };
      };
    }