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
      identifier = { name = "observable-sharing"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Atze van der Ploeg <atzeus@gmail.com>,\nMarkus Aronsson <mararon@chalmers.se>";
      homepage = "https://github.com/atzeus/observable-sharing";
      url = "";
      synopsis = "Simple observable sharing";
      description = "Simple observable sharing inspired by the paper \"Observable Sharing\nfor Functional Circuit Description\".";
      buildType = "Simple";
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