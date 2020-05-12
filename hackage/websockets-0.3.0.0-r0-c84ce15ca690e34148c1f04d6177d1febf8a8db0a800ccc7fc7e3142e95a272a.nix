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
      identifier = { name = "websockets"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Siniša Biđin";
      maintainer = "Siniša Biđin <sinisa@bidin.cc>";
      author = "Siniša Biđin";
      homepage = "";
      url = "";
      synopsis = "Create WebSocket servers";
      description = "A library for creating WebSocket-capable servers, where the implemented protocol is defined here: <http://is.gd/eSdLB>.\n\nThis library is tested with Chromium >=7, Opera >=11 and Firefox >=4 and is a work in progress. (Note: many of these newest browsers have recently stopped shipping with websockets enabled by default, due to security issues which are yet to be resolved.)\n\nAn example of usage can be found in the Network.WebSockets module documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }