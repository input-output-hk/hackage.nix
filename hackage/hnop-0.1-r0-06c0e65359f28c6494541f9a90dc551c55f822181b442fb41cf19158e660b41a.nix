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
      identifier = { name = "hnop"; version = "0.1"; };
      license = "NONE";
      copyright = "";
      maintainer = "";
      author = "Ashley Yakeley <ashley@semantic.org>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hnop" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }