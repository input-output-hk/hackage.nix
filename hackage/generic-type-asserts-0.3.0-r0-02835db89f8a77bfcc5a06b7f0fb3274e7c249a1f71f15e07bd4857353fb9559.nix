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
      identifier = { name = "generic-type-asserts"; version = "0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Orchard <thefirstmuffinman@gmail.com>";
      author = "Ben Orchard";
      homepage = "https://github.com/raehik/generic-type-asserts#readme";
      url = "";
      synopsis = "Structural assertions on generic type representations.";
      description = "Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-type-asserts" or (errorHandler.buildDepError "generic-type-asserts"))
            (hsPkgs."type-spec" or (errorHandler.buildDepError "type-spec"))
            ];
          buildable = true;
          };
        };
      };
    }