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
      identifier = { name = "workflow-osx"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2015 Spiros M. Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "https://github.com/sboosali/workflow-osx#readme";
      url = "";
      synopsis = "a \"Desktop Workflow\" monad with Objective-C bindings ";
      description = "a \\\"Desktop Workflow\\\" monad with Objective-C bindings\n\ne.g. press some keys, click the mouse, get/set the clipboard\n\nsee @Workflow.OSX@ for several examples\n\n(if the build fails, see the <https://github.com/sboosali/workflow-osx#the-build README>)\n\n(this package is on hackage for convenience, but it's still a prerelease)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."bv" or (errorHandler.buildDepError "bv"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        frameworks = [ (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa")) ];
        buildable = if !system.isOsx then false else true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."workflow-osx" or (errorHandler.buildDepError "workflow-osx"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }