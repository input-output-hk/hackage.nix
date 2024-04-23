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
      identifier = { name = "lye"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "MostAwesomeDude@gmail.com";
      author = "Corbin Simpson";
      homepage = "";
      url = "";
      synopsis = "A Lilypond-compiling music box";
      description = "Lye is a simple package for turning Lilypond snippets\ninto music.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lye" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HCodecs" or (errorHandler.buildDepError "HCodecs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          ];
          buildable = true;
        };
      };
    };
  }