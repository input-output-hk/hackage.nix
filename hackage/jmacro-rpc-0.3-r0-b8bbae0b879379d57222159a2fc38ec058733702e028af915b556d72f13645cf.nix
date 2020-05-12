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
      identifier = { name = "jmacro-rpc"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman";
      homepage = "http://hub.darcs.net/gershomb/jmacro";
      url = "";
      synopsis = "JSON-RPC clients and servers using JMacro, and evented client-server Reactive Programming.";
      description = "Base jmacro-rpc package. Provides server-independent functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          ];
        buildable = true;
        };
      };
    }