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
      identifier = { name = "hath"; version = "1.8.7"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "https://michael.orlitzky.com/code/hath.xhtml";
      url = "";
      synopsis = "Manipulates network blocks in CIDR notation";
      description = "= WARNING\n\nThis package is no longer maintained on Hackage. Please obtain it\nfrom [the hath\nhomepage](https://michael.orlitzky.com/code/hath.xhtml)\ninstead. I am unable to delete my Hackage account or any of my\npackages; any further activity on Hackage should be considered\nmalicious.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hath" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }