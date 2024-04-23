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
      specVersion = "1.12";
      identifier = { name = "tdlib"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Poscat";
      maintainer = "poscat@mail.poscat.moe";
      author = "Poscat";
      homepage = "https://github.com/poscat0x04/tdlib#readme";
      url = "";
      synopsis = "Bidings to the tdlib json interface";
      description = "Please see the README on GitHub at <https://github.com/poscat0x04/tdlib#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."tdjson" or (errorHandler.sysDepError "tdjson")) ];
        buildable = true;
      };
      tests = {
        "tdlib-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tdlib" or (errorHandler.buildDepError "tdlib"))
          ];
          libs = [ (pkgs."tdjson" or (errorHandler.sysDepError "tdjson")) ];
          buildable = true;
        };
      };
    };
  }