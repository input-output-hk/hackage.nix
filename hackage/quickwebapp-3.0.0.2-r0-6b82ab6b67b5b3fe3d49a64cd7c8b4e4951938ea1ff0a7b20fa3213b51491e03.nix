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
      identifier = { name = "quickwebapp"; version = "3.0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "julien.tanguy@jhome.fr";
      author = "Julien Tanguy";
      homepage = "";
      url = "";
      synopsis = "A quick webapp generator for any file processing tool";
      description = "A quick-and-dirty api generator, inspired from the 'interact' function from\n'Prelude'.\n\n> interactWeb reverse\n\nThis creates a server listening on port 8080, or environment value PORT.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."servant-lucid" or (errorHandler.buildDepError "servant-lucid"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }