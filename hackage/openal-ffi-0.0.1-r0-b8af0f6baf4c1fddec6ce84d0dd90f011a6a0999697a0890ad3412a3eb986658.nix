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
      identifier = { name = "openal-ffi"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 IC Rainbow";
      maintainer = "aenor.realm@gmail.com";
      author = "IC Rainbow";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to OpenAL.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."openal" or (errorHandler.sysDepError "openal")) ];
        frameworks = pkgs.lib.optional (system.isOsx || system.isIOS) (pkgs."OpenAL" or (errorHandler.sysDepError "OpenAL"));
        buildable = true;
      };
      tests = {
        "openal-ffi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."openal-ffi" or (errorHandler.buildDepError "openal-ffi"))
          ];
          buildable = true;
        };
      };
    };
  }