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
      identifier = { name = "free-er"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Ömer Sinan Ağacan";
      maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>";
      author = "Ömer Sinan Ağacan";
      homepage = "https://github.com/osa1/free-er";
      url = "";
      synopsis = "An extensible effects library";
      description = "See examples directory for some example effect definitions and handlers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "free-er-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."free-er" or (errorHandler.buildDepError "free-er"))
          ];
          buildable = true;
        };
      };
    };
  }