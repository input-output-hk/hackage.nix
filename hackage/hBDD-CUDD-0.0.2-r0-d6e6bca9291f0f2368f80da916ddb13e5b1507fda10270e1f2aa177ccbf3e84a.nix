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
      specVersion = "1.6";
      identifier = { name = "hBDD-CUDD"; version = "0.0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "(C) 2002-2005, 2009 University of New South Wales, (C) 2009-2011 Peter Gammie";
      maintainer = "peteg42@gmail.com";
      author = "Peter Gammie, Jeremy Lee";
      homepage = "";
      url = "";
      synopsis = "An FFI binding to the CUDD library";
      description = "hBDD provides a high-level API to some Boolean Decision Diagram\nlibraries; this is the CUDD part of it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hBDD" or (errorHandler.buildDepError "hBDD"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        libs = pkgs.lib.optional (system.isOsx) (pkgs."cudd" or (errorHandler.sysDepError "cudd")) ++ pkgs.lib.optionals (system.isLinux) [
          (pkgs."cudd" or (errorHandler.sysDepError "cudd"))
          (pkgs."mtr" or (errorHandler.sysDepError "mtr"))
          (pkgs."st" or (errorHandler.sysDepError "st"))
          (pkgs."util" or (errorHandler.sysDepError "util"))
          (pkgs."epd" or (errorHandler.sysDepError "epd"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }