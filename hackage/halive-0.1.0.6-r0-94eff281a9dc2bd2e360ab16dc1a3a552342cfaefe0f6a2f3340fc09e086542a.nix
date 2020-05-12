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
      identifier = { name = "halive"; version = "0.1.0.6"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "lukexi@me.com";
      author = "Luke Iannini";
      homepage = "https://github.com/lukexi/halive";
      url = "";
      synopsis = "A live recompiler";
      description = "Live recompiler for Haskell\n\n<<http://lukexi.github.io/HaliveDemo.gif>>\n\n/Usage:/\n\n> halive path/to/myfile.hs [optionally any/extra include/dirs ..] -- [args to app]\n\nSee <https://github.com/lukexi/halive/blob/master/README.md README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."foreign-store" or (errorHandler.buildDepError "foreign-store"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "halive" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."bin-package-db" or (errorHandler.buildDepError "bin-package-db"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            ];
          buildable = true;
          };
        };
      };
    }