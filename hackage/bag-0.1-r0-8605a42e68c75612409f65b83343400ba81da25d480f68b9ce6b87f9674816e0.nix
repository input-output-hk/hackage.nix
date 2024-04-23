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
      specVersion = "1.4";
      identifier = { name = "bag"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel Waterworth <da.waterworth@gmail.com>";
      author = "Daniel Waterworth <da.waterworth@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A simple stable bag.";
      description = "bag provides an alternative to a list for cases where constant time\nconcatenation is required.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }