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
      identifier = { name = "SConfig"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "fgaz@users.noreply.github.com";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/SConfig";
      url = "";
      synopsis = "A simple config library";
      description = "A simple config library.";
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