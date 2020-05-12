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
      specVersion = "1.2";
      identifier = { name = "binary-communicator"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yves Parès <limestrael@gmail.com>";
      author = "Yves Parès";
      homepage = "";
      url = "";
      synopsis = "Send and receive binary data.";
      description = "Simple datatype that makes easier to send and receive serializable values in any MonadIO. Inspired by Gregory Crosswhite's 'binary-protocol' package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }