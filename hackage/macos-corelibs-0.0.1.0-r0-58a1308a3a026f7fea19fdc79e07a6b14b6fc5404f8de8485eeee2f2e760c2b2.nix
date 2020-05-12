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
      specVersion = "2.0";
      identifier = { name = "macos-corelibs"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Filippo Sestini";
      maintainer = "sestini.filippo@gmail.com";
      author = "Filippo Sestini";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to C-based Mac OS SDK frameworks";
      description = "Type-safe Haskell bindings to C-based frameworks of the Apple\nMac OS SDK, including CoreFoundation, CoreGraphics, and Carbon\nAccessibility APIs. Please see the README on Github for more\ninformation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
        frameworks = [
          (pkgs."Carbon" or (errorHandler.sysDepError "Carbon"))
          (pkgs."Cocoa" or (errorHandler.sysDepError "Cocoa"))
          ];
        buildable = true;
        };
      };
    }