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
      identifier = { name = "layout-rules"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Trevor Elliott, 2017";
      maintainer = "awesomelyawesome@gmail.com";
      author = "Trevor Elliott";
      homepage = "https://github.com/elliottt/layout-rules";
      url = "";
      synopsis = "A collection of different layout implementations";
      description = "A collection of different layout implementations, currently just the off-sides\nrule.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."alex-tools" or (errorHandler.buildDepError "alex-tools"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }