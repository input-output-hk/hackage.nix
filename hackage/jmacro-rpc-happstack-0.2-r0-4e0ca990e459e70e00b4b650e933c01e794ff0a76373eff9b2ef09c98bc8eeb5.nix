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
      identifier = { name = "jmacro-rpc-happstack"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman";
      homepage = "http://patch-tag.com/r/gershomb/jmacro-rpc";
      url = "";
      synopsis = "Happstack backend for jmacro-rpc";
      description = "Provides functions for serving jmacro-rpc json rpcs and panels from Happstack.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."jmacro-rpc" or (errorHandler.buildDepError "jmacro-rpc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          ];
        buildable = true;
        };
      };
    }