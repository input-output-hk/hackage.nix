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
        name = "spine";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Universiteit Utrecht";
      maintainer = "Sean Leather <leather@cs.uu.nl>";
      author = "Sean Leather";
      homepage = "https://github.com/spl/spine";
      url = "";
      synopsis = "Simple implementation of the generic spine view";
      description = "This package contains the basic representation types for defining generic\nfunctions with the spine view. It is currently incomplete with respect to the\npapers. We hope to rectify that in the future.\n\nSee the following publications for details.\n\nR. Hinze and A. Löh. \"Scrap Your Boilerplate: Reloaded\" In Functional and\nLogic Programming. 2006. pp. 13-29.\n\nR. Hinze and A. Löh. \"Scrap Your Boilerplate: Revolutions\" In Mathematics and\nProgram Construction. 2006. pp. 180-208.";
      buildType = "Simple";
    };
    components = {
      "spine" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }