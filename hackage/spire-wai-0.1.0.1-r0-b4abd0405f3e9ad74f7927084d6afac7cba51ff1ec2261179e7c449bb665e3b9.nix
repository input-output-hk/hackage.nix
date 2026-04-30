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
      specVersion = "3.12";
      identifier = { name = "spire-wai"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Josh Burgess <joshburgess.webdev@gmail.com>";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/acolyte";
      url = "";
      synopsis = "WAI/warp backend adapter for spire";
      description = "Bridges spire Services (using http-core types) to WAI Applications\nrunning on warp. This is the only package that imports WAI; everything\nabove is backend-agnostic.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
          (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spire-wai" or (errorHandler.buildDepError "spire-wai"))
            (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
            (hsPkgs."spire-http" or (errorHandler.buildDepError "spire-http"))
            (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
          buildable = true;
        };
      };
    };
  }