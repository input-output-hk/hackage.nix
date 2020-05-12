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
      identifier = { name = "roles"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Matt Noonan, (C) 2014 Edward A. Kmett";
      maintainer = "Matt Noonan <matt.noonan@gmail.com>";
      author = "Edward A. Kmett, Matt Noonan";
      homepage = "http://github.com/matt-noonan/roles/";
      url = "";
      synopsis = "Composable class-based roles";
      description = "Composable class-based roles";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }