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
      identifier = { name = "flexible-time"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "t.t.mc1192.sf@gmail.com";
      author = "tattsun";
      homepage = "https://github.com/tattsun/flexible-time";
      url = "";
      synopsis = "simple extension of Data.UnixTime.";
      description = "simple extension of Data.UnixTime.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix-time" or (errorHandler.buildDepError "unix-time"))
          ];
        buildable = true;
        };
      };
    }