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
      identifier = { name = "gelatin-freetype2"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Schell Scivally";
      maintainer = "schell@zyghost.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/gelatin/gelatin-freetype2#readme";
      url = "";
      synopsis = "FreeType2 based text rendering for the gelatin realtime\nrendering system.";
      description = "FreeType2 based text rendering for the gelatin realtime\nrendering system. Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gelatin" or (errorHandler.buildDepError "gelatin"))
          (hsPkgs."gelatin-gl" or (errorHandler.buildDepError "gelatin-gl"))
          (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          ];
        buildable = true;
        };
      tests = {
        "gelatin-freetype2-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gelatin-freetype2" or (errorHandler.buildDepError "gelatin-freetype2"))
            ];
          buildable = true;
          };
        };
      };
    }