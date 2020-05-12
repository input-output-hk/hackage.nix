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
      identifier = { name = "cabal-ghci"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "etienne@atnnn.com";
      author = "Etienne Laurin";
      homepage = "http://github.com/atnnn/cabal-ghci";
      url = "";
      synopsis = "Set up ghci with options taken from a .cabal file";
      description = "The executable cabal-ghci runs ghci with the paths and extensions needed by a cabal project. The cabalSet function can be added to your .ghci to provide the same functionality at runtime, giving you more control over the options that are set.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "cabal-ghci" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }