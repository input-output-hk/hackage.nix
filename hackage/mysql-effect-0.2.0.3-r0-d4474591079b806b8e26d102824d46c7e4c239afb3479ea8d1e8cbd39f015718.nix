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
      identifier = { name = "mysql-effect"; version = "0.2.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "tob@butter.sh";
      author = "Tobias Florek";
      homepage = "https://github.com/ibotty/mysql-effect";
      url = "";
      synopsis = "An extensible mysql effect using extensible-effects and mysql-simple";
      description = "Any help (especially documentation) is very welcome,";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
          (hsPkgs."mysql-simple" or (errorHandler.buildDepError "mysql-simple"))
          (hsPkgs."mysql" or (errorHandler.buildDepError "mysql"))
          ];
        buildable = true;
        };
      };
    }