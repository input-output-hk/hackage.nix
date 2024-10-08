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
      identifier = { name = "streamproc"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2004-2010 Shawn Garbett and Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Shawn Garbett <shawn@garbett.org>, Peter Simons <simons@cryp.to>";
      homepage = "http://gitorious.org/streamproc";
      url = "";
      synopsis = "Stream Processer Arrow";
      description = "A continuation-based stream processor implemented as an\nArrow. This version generalizes the SP type described\nin John Hughes \\\"Generalising Monads to Arrows\\\" to\nfunction as a wrapper for arbitrary monads.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }