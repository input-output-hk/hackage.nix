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
      specVersion = "1.8";
      identifier = { name = "urldecode"; version = "1.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Benedict Eastaugh";
      maintainer = "benedict@eastaugh.net";
      author = "Benedict Eastaugh";
      homepage = "https://github.com/beastaugh/urldecode";
      url = "";
      synopsis = "Decode percent-encoded strings.";
      description = "Pass a list of percent-encoded strings to the executable as\narguments and it will print the decoded versions, separated\nby newlines.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "urldecode" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = true;
        };
      };
    };
  }