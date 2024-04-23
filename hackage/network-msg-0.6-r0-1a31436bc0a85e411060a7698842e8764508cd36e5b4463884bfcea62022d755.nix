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
      identifier = { name = "network-msg"; version = "0.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Lana Black <lanablack@amok.cc>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Recvmsg and sendmsg bindings.";
      description = "Bindings to sendmsg and recvmsg POSIX functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
    };
  }