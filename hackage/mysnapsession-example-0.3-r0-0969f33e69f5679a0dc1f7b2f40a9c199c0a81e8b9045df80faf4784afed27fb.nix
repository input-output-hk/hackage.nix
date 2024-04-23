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
      identifier = { name = "mysnapsession-example"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith <cdsmith@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Example projects using mysnapsession";
      description = "This is a collection of simple web applications that use\nthe mysnapsession package for stateful HTTP.\n\nAs of version 0.3, this uses Cabal's data file mechanism,\nso you'll need to install before you run to copy the\ndata files to where they are expected.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "animalgame" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."mysnapsession" or (errorHandler.buildDepError "mysnapsession"))
            (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          ];
          buildable = true;
        };
        "clientcount" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mysnapsession" or (errorHandler.buildDepError "mysnapsession"))
          ];
          buildable = true;
        };
      };
    };
  }