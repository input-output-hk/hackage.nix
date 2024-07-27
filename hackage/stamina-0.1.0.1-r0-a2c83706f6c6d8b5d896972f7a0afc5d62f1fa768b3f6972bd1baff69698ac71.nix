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
      specVersion = "3.4";
      identifier = { name = "stamina"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "domen@cachix.org";
      author = "Domen Kožar";
      homepage = "https://github.com/cachix/stamina.hs";
      url = "";
      synopsis = "Retries for humans";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
      exes = {
        "readme" = {
          depends = [
            (hsPkgs."stamina" or (errorHandler.buildDepError "stamina"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = true;
        };
      };
      tests = {
        "stamina-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stamina" or (errorHandler.buildDepError "stamina"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          ];
          buildable = true;
        };
      };
    };
  }