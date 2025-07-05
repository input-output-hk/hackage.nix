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
    flags = { development = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "pear"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "noah.easterly@gmail.com";
      author = "Noah Luck Easterly";
      homepage = "https://github.com/rampion/pear";
      url = "";
      synopsis = "Pear Trees: An indexed type using type-level binary numbers";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      sublibs = {
        "markdown-examples" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = true;
        };
      };
      tests = {
        "pear-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."pear" or (errorHandler.buildDepError "pear"))
          ];
          buildable = true;
        };
      };
    };
  }