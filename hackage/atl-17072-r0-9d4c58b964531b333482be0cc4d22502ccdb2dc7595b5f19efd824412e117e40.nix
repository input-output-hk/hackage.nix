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
      specVersion = "1.6";
      identifier = { name = "atl"; version = "17072"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "None";
      author = "Matthew Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Arrow Transformer Library";
      description = "Arrow Transformer Library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }