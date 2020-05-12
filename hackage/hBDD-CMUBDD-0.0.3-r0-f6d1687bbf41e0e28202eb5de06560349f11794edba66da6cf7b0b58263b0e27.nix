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
      specVersion = "1.2.3";
      identifier = { name = "hBDD-CMUBDD"; version = "0.0.3"; };
      license = "LicenseRef-LGPL";
      copyright = "(C) 2002-2005, 2009 University of New South Wales, (C) 2009-2011 Peter Gammie";
      maintainer = "peteg42@gmail.com";
      author = "Peter Gammie";
      homepage = "";
      url = "";
      synopsis = "An FFI binding to CMU/Long's BDD library";
      description = "hBDD provides a high-level API to some Boolean Decision Diagram\nlibraries; this is the CMU/Long part of it.";
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
        libs = [
          (pkgs."bdd" or (errorHandler.sysDepError "bdd"))
          (pkgs."mem" or (errorHandler.sysDepError "mem"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }