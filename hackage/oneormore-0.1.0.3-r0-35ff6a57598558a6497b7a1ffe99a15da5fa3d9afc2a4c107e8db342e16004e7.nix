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
      identifier = { name = "oneormore"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "ithinkican@gmail.com";
      author = "Allen Nelson";
      homepage = "https://github.com/thinkpad20/oneormore";
      url = "";
      synopsis = "A never-empty list type.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }