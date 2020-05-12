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
      identifier = { name = "jmacro-rpc-snap"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman";
      homepage = "http://hub.darcs.net/gershomb/jmacro-rpc";
      url = "";
      synopsis = "Snap backend for jmacro-rpc";
      description = "Provides functions for serving jmacro-rpc json rpcs and panels from Snap.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
          (hsPkgs."jmacro-rpc" or (errorHandler.buildDepError "jmacro-rpc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }