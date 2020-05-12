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
      specVersion = "0";
      identifier = { name = "typical"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Rick Kaudewitz <rick.kaudewitz@yahoo.de>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Type level numbers, vectors, list. This lib needs to be extended.";
      description = "Type level programming library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }