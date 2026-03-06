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
      specVersion = "3.0";
      identifier = { name = "gb-sprite"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "devon.tomlin@novavero.ai";
      author = "Devon Tomlin";
      homepage = "https://github.com/Gondola-Bros-Entertainment/gb-sprite";
      url = "";
      synopsis = "Procedural 2D sprite and VFX generation";
      description = "A pure Haskell library for generating 2D sprites, animations,\nand visual effects. No external image libraries — just math.\nGenerate sprites, draw primitives, compose layers, pack sprite\nsheets, render bitmap text, and create procedural VFX. Export\nto BMP and PNG natively.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
      tests = {
        "gb-sprite-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."gb-sprite" or (errorHandler.buildDepError "gb-sprite"))
          ];
          buildable = true;
        };
      };
    };
  }