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
      specVersion = "1.12";
      identifier = { name = "moss"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2018 Michael B. Gale";
      maintainer = "m.gale@warwick.ac.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/moss#readme";
      url = "";
      synopsis = "Haskell client for Moss";
      description = "Please see the README on Github at <https://github.com/mbg/moss#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
        ];
        buildable = true;
      };
    };
  }