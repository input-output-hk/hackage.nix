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
      identifier = { name = "hdbc-tuple"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Rick Kaudewitz";
      maintainer = "Rick Kaudewitz <rick.kaudewitz@yahoo.de>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Type save tuples for HDBC";
      description = "Type save tuples for HDBC";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."typical" or (errorHandler.buildDepError "typical"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          ];
        buildable = true;
        };
      };
    }