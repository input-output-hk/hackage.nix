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
      specVersion = "3.0";
      identifier = { name = "haeredes"; version = "1.8.7"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "https://michael.orlitzky.com/code/haeredes.xhtml";
      url = "";
      synopsis = "Confirm delegation of NS and MX records";
      description = "= WARNING\n\nThis package is no longer maintained on Hackage. Please obtain it\nfrom [the haeredes\nhomepage](https://michael.orlitzky.com/code/haeredes.xhtml)\ninstead. I am unable to delete my Hackage account or any of my\npackages; any further activity on Hackage should be considered\nmalicious.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haeredes" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }