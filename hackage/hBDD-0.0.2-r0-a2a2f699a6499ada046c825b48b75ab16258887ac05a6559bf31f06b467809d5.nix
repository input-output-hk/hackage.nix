{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hBDD";
        version = "0.0.2";
      };
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
      "hBDD" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }