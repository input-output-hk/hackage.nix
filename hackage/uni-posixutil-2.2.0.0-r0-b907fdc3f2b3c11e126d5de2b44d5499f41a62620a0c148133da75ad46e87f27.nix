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
      specVersion = "1.4";
      identifier = { name = "uni-posixutil"; version = "2.2.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Christian.Maeder@dfki.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/uniform/wb/";
      url = "";
      synopsis = "Posix utilities for the uniform workbench";
      description = "posix utilities";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."uni-util" or (errorHandler.buildDepError "uni-util"))
          (hsPkgs."uni-events" or (errorHandler.buildDepError "uni-events"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      };
    }