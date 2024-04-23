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
      identifier = { name = "conformance"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Tom Sydney Kerckhove <syd@cs-syd.eu>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "";
      description = "An RFC 2119 Monad transformer";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }