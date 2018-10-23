{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "AppleScript";
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wouter Swierstra <wouter@chalmers.se>";
      author = "Wouter Swierstra";
      homepage = "";
      url = "";
      synopsis = "Call AppleScript from Haskell.";
      description = "This package enables you to compile and\nexecute AppleScript from Haskell applications.";
      buildType = "Simple";
    };
    components = {
      "AppleScript" = {
        depends  = [ (hsPkgs.base) ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Carbon");
      };
    };
  }