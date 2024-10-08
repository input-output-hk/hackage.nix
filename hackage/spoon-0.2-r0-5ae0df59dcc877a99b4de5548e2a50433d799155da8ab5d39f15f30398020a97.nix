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
      specVersion = "1.2";
      identifier = { name = "spoon"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2009 Matt Morrow & Dan Peebles";
      maintainer = "Dan Peebles <pumpkingod@gmail.com>";
      author = "Matt Morrow, Dan Peebles";
      homepage = "";
      url = "";
      synopsis = "Catch errors thrown from pure computations.";
      description = "Takes an error-throwing expression and puts it back in the Maybe it belongs in.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
    };
  }