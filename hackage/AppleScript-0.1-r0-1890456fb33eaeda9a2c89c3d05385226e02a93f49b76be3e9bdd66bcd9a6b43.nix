{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "AppleScript";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wouter Swierstra <wss@cs.nott.ac.uk>";
      author = "Wouter Swierstra";
      homepage = "";
      url = "";
      synopsis = "Call AppleScript from Haskell.";
      description = "This package enables you to compile and\nexecute AppleScript from Haskell applications.";
      buildType = "Custom";
    };
    components = {
      "AppleScript" = {
        depends  = [ (hsPkgs.base) ];
        frameworks = [
          (pkgs."Carbon")
        ];
      };
    };
  }