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
      identifier = { name = "located"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016";
      maintainer = "awesomelyawesome@gmail.com";
      author = "Trevor Elliott";
      homepage = "https://github.com/elliottt/located";
      url = "";
      synopsis = "Source location helpers";
      description = "Types and functions for working with location-tagged tokens. Includes an\nimplementation of the offsides-rule, to make adding layout to a compiler an\neasy task.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }