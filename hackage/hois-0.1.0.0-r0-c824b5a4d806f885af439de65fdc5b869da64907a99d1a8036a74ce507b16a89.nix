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
      identifier = { name = "hois"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Horn <gregmainland@gmail.com>";
      author = "Antti Salonen and Greg Horn";
      homepage = "";
      url = "";
      synopsis = "OIS bindings";
      description = "Bindings to the OIS input system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."OIS" or (errorHandler.sysDepError "OIS")) ];
        buildable = true;
        };
      exes = {
        "OISConsole" = {
          depends = [
            (hsPkgs."hois" or (errorHandler.buildDepError "hois"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            ];
          buildable = true;
          };
        };
      };
    }