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
      identifier = { name = "hsilop"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "micheleguerinirocco@me.com";
      author = "rnhmjoj";
      homepage = "https://github.com/Rnhmjoj/hsilop";
      url = "";
      synopsis = "RPN calculator";
      description = "ʜƨiloꟼ is a simple reverse polish notation calculator\nwith haskeline line editing capabilites.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsilop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
            ];
          buildable = true;
          };
        };
      };
    }