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
      identifier = { name = "alure"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "carljsv@student.matnat.uio.no";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A Haskell binding for ALURE";
      description = "A Haskell binding for ALURE, http://kcat.strangesoft.net/alure.html,\na utility library to help manage common tasks with OpenAL applications.\nFor the moment just haskell functions for initialization and file loading.\nLinks dynamically to ALURE C library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."OpenAL" or (errorHandler.buildDepError "OpenAL"))
          ];
        libs = [ (pkgs."alure" or (errorHandler.sysDepError "alure")) ];
        buildable = true;
        };
      };
    }