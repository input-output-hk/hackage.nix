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
      specVersion = "1.0";
      identifier = { name = "utf8-env"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmitry Golubovsky <golubovsky@gmail.com>";
      author = "Dmitry Golubovsky";
      homepage = "";
      url = "";
      synopsis = "UTF-8 aware substitutes for functions in System.Environment";
      description = "UTF-8 aware substitutes for functions in System.Environment\nIt was tested with GHC 6.10.1 in Unix (Linux) environment.\nHugs users do not need this package.\nImport System.Environment.UTF8 into your program, and\nuse functions like getArgs and getEnv in usual way.\nUTF8-aware locale is expected, that is, environment\nhas setting of LANG = en_US.utf8 or similar.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }