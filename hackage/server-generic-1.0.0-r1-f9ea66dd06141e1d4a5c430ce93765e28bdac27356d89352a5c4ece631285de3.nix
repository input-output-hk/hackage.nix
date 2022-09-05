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
      specVersion = "1.10";
      identifier = { name = "server-generic"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Gabriella Gonzalez";
      maintainer = "GenuineGabriella@gmail.com";
      author = "Gabriella Gonzalez";
      homepage = "https://github.com/Gabriella439/Haskell-Server-Generic-Library";
      url = "";
      synopsis = "Auto-generate a server for your datatype";
      description = "This library auto-generates a REST API from any datatype\nthat derives the `Generic` interface\n\nSee the documentation in \"Server.Generic\" for an example of\nhow to use this library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          ];
        buildable = true;
        };
      };
    }