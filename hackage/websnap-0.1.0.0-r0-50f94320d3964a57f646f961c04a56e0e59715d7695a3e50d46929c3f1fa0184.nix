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
      specVersion = "1.10";
      identifier = { name = "websnap"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Jared Baldridge      ";
      maintainer = "jrb@expunge.us";
      author = "Jared Baldridge";
      homepage = "https://github.com/jrb/websnap";
      url = "";
      synopsis = "Transforms URLs to PNGs";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "websnap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = true;
        };
      };
    };
  }