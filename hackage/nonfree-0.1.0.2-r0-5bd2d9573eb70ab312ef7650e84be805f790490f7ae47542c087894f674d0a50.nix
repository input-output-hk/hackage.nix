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
      specVersion = "1.8";
      identifier = { name = "nonfree"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "shachaf@gmail.com";
      author = "Shachaf Ben-Kiki";
      homepage = "";
      url = "";
      synopsis = "Free structures sans laws";
      description = "Reified structures for debugging consumers of type classes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }