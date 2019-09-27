let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      synopsis = "a \"Desktop Workflow\" monad with Objective-C bindings";
      description = "a \\\"Desktop Workflow\\\" monad with Objective-C bindings.\n\nincludes bindings to:\n\n* press keys with modifiers\n\n* get/set the clipboard\n\n* launch/focus applications\n\n* get the name of the current application\n\n* open URLs\n\nfor example:\n\n> -- | cut the currently highlighted region\n> cut :: (MonadWorkflow m) => m String\n> cut = do\n>  sendKeyChord [CommandModifier] XKey\n>  delay 250\n>  getClipboard\n\n> -- | transform the currently highlighted region, via the clipboard\n> transformClipboard :: (MonadWorkflow m) => (String -> String) -> m ()\n> transformClipboard f = do\n>  contents <- cut\n>  setClipboard (f contents)\n>  sendKeyChord [CommandModifier] VKey\n\nsee @Workflow.OSX@ for several more examples\n\n(if hackage won't build the docs, see them at <http://sboosali.github.io/documentation/workflow-osx/index.html>)\n\n(this package is on hackage for convenience, but it's still a prerelease)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."bv" or (buildDepError "bv"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        frameworks = [ (pkgs."Cocoa" or (sysDepError "Cocoa")) ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."workflow-osx" or (buildDepError "workflow-osx"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }