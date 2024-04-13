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
      identifier = { name = "type-level-bytestrings"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Orchard <thefirstmuffinman@gmail.com>";
      author = "Ben Orchard";
      homepage = "https://github.com/raehik/type-level-bytestrings#readme";
      url = "";
      synopsis = "Tools for manipulating type-level bytes and bytestrings";
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
            (hsPkgs."type-level-bytestrings" or (errorHandler.buildDepError "type-level-bytestrings"))
            (hsPkgs."type-spec" or (errorHandler.buildDepError "type-spec"))
            ];
          buildable = true;
          };
        };
      };
    }