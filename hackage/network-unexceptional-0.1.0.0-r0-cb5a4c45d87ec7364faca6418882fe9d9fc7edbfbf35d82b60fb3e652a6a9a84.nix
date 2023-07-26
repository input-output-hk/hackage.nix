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
      identifier = { name = "network-unexceptional"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Network functions that do not throw exceptions";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
          (hsPkgs."error-codes" or (errorHandler.buildDepError "error-codes"))
          (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        buildable = true;
        };
      };
    }