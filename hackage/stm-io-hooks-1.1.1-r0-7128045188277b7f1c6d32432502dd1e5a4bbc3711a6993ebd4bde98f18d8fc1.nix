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
      specVersion = "1.12";
      identifier = { name = "stm-io-hooks"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Peter Robinson 2009-2019, Chris Kuklewicz 2006";
      maintainer = "thaldyron@gmail.com";
      author = "Peter Robinson";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/githubuser/stm-io-hooks#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }