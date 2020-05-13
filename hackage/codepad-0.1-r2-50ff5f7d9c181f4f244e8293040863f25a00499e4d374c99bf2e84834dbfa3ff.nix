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
      identifier = { name = "codepad"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "none";
      author = "Chris Done";
      homepage = "http://github.com/chrisdone/codepad";
      url = "";
      synopsis = "Submit and retrieve paste output from CodePad.org.";
      description = "Submit and retrieve paste output from http://codepad.org/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }