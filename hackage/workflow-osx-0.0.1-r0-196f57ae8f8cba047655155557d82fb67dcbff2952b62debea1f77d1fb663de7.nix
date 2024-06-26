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
      identifier = { name = "workflow-osx"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2015 Spiros M. Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "https://github.com/sboosali/workflow-osx#readme";
      url = "";
      synopsis = "a \"Desktop Workflow\" monad with Objective-C bindings ";
      description = "a \\\"Desktop Workflow\\\" monad with Objective-C bindings.\n\nincludes bindings to:\n\n* press keys with modifiers\n\n* get/set the clipboard\n\n* launch/focus applications\n\n* get the name of the current application\n\n* open URLs\n\nfor example:\n\n> -- | cut the currently highlighted region\n> cut :: (MonadWorkflow m) => m String\n> cut = do\n>  sendKeyChord [CommandModifier] XKey\n>  delay 250\n>  getClipboard\n\n> -- | transform the currently highlighted region, via the clipboard\n> transformClipboard :: (MonadWorkflow m) => (String -> String) -> m ()\n> transformClipboard f = do\n>  contents <- cut\n>  setClipboard (f contents)\n>  sendKeyChord [CommandModifier] VKey\n\nsee @Workflow.OSX@ for several more examples\n\n(if hackage won't build the docs, see them at <http://sboosali.github.io/documentation/workflow-osx/index.html>)\n\n(this package is on hackage for convenience, but it's still a prerelease)\n";
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
        buildable = true;
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