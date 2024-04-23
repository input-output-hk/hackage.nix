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
      identifier = { name = "storable-offset"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Oleksii Divak";
      maintainer = "Oleksii Divak <frozenwitness@gmail.com>";
      author = "Oleksii Divak";
      homepage = "https://github.com/burningwitness/storable-offset#readme";
      url = "";
      synopsis = "Storable offsets for record fields";
      description = "Please see the README on GitHub at <https://github.com/burningwitness/storable-offset#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }