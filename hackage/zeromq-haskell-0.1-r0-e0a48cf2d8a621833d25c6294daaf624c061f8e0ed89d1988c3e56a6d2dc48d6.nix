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
      identifier = { name = "zeromq-haskell"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2010 Toralf Wittner";
      maintainer = "toralf.wittner@gmail.com";
      author = "Toralf Wittner";
      homepage = "http://github.com/twittner/zeromq-haskell/";
      url = "";
      synopsis = "bindings to zeromq ";
      description = "Bindings to zeromq (http://zeromq.org)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }