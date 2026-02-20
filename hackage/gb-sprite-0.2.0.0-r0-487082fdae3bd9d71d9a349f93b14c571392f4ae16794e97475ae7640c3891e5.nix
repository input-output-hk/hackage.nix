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
    flags = { juicy-pixels = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "gb-sprite"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "devon.tomlin@novavero.ai";
      author = "Devon Tomlin";
      homepage = "https://github.com/Gondola-Bros-Entertainment/gb-sprite";
      url = "";
      synopsis = "Procedural 2D sprite and VFX generation";
      description = "A pure Haskell library for generating 2D sprites, animations,\nand visual effects. No external image libraries — just math.\n.\nGenerate sprites, draw primitives, compose layers, pack sprite\nsheets, render bitmap text, and create procedural VFX. Export\nto BMP natively, or enable the @juicy-pixels@ flag for PNG.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (flags.juicy-pixels) (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"));
        buildable = true;
      };
      tests = {
        "gb-sprite-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."gb-sprite" or (errorHandler.buildDepError "gb-sprite"))
          ];
          buildable = true;
        };
      };
    };
  }