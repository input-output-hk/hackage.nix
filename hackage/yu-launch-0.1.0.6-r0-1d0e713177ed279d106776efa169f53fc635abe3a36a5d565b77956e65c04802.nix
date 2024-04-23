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
      identifier = { name = "yu-launch"; version = "0.1.0.6"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017 Johann Lee";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/Yu";
      url = "";
      synopsis = "The launcher for Yu.";
      description = "The launcher for Yu.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yu-launch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yu-utils" or (errorHandler.buildDepError "yu-utils"))
            (hsPkgs."yu-auth" or (errorHandler.buildDepError "yu-auth"))
            (hsPkgs."yu-core" or (errorHandler.buildDepError "yu-core"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
    };
  }