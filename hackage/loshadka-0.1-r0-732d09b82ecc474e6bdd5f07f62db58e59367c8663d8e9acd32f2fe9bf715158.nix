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
      specVersion = "1.8";
      identifier = { name = "loshadka"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "somu@so.mu";
      author = "George Timoschenko";
      homepage = "https://github.com/tvorcesky/loshadka";
      url = "";
      synopsis = "Minecraft 1.7 server proxy that answers to queries when the server is offline";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "loshadka" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."hex" or (errorHandler.buildDepError "hex"))
          ];
          buildable = true;
        };
      };
    };
  }