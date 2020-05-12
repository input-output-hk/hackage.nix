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
    flags = { fastcompile = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "fltkhs-hello-world"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "http://github.com/deech/fltkhs-hello-world";
      url = "";
      synopsis = "Fltkhs template project";
      description = "Starter kit for an FLTKHS project";
      buildType = "Custom";
      };
    components = {
      exes = {
        "fltkhs-hello-world" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        };
      };
    }