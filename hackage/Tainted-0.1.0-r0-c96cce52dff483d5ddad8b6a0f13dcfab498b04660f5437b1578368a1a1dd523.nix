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
      identifier = { name = "Tainted"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Ross Meikleham";
      maintainer = "rossmeikleham@hotmail.co.uk";
      author = "RossMeikleham";
      homepage = "https://github.com/RossMeikleham/Tainted";
      url = "";
      synopsis = "Tainted type, and associated operations";
      description = "Tainted type, and associated operations";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }