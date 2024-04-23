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
      identifier = { name = "asciichart"; version = "1.0.0"; };
      license = "MIT";
      copyright = "(c) 2018-Present Fabian Beuke";
      maintainer = "mail@beuke.org";
      author = "Fabian Beuke";
      homepage = "https://github.com/madnight/asciichart";
      url = "";
      synopsis = "Line charts in terminal";
      description = "Line charts in terminal ╭┈╯. Haskell port of kroitor/asciichart.\n\n@\nimport Data.Text.Chart (plot)\n\nmain :: IO ()\nmain = plot [1..20]\n@\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."asciichart" or (errorHandler.buildDepError "asciichart"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }