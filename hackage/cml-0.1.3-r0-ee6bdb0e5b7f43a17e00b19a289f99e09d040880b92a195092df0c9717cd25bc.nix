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
      identifier = { name = "cml"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ben.franksen@online.de";
      author = "Avik Chaudhuri";
      homepage = "http://code.haskell.org/cml/";
      url = "";
      synopsis = "Events and Channels as in Concurrent ML";
      description = "Implementation of Events and Channels as in CML\n(extended with communication guards).\nSee /A Concurrent ML Library in Concurrent Haskell/ by Avik Chaudhuri\n(avik\\@cs.umd.edu) for details. The original code as well as the papers can\nbe found at <http://www.cs.umd.edu/~avik/projects/cmllch/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }