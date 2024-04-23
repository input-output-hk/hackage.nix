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
      identifier = { name = "hBDD"; version = "0.0.3"; };
      license = "LicenseRef-LGPL";
      copyright = "(C) 2002-2005, 2009 University of New South Wales, (C) 2009-2011 Peter Gammie";
      maintainer = "peteg42@gmail.com";
      author = "Peter Gammie";
      homepage = "";
      url = "";
      synopsis = "An abstraction layer for BDD libraries";
      description = "hBDD provides a high-level API to the CUDD and CMU Boolean Decision\nDiagram libraries.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }