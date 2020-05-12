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
      identifier = { name = "type-sets"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/type-sets#readme";
      url = "";
      synopsis = "Type-level sets";
      description = "Please see the README on GitHub at <https://github.com/isovector/type-sets#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmptype" or (errorHandler.buildDepError "cmptype"))
          ];
        buildable = true;
        };
      tests = {
        "type-sets-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmptype" or (errorHandler.buildDepError "cmptype"))
            (hsPkgs."type-sets" or (errorHandler.buildDepError "type-sets"))
            ];
          buildable = true;
          };
        };
      };
    }