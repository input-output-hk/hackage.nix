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
    flags = { werror = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "mcp-hoogle"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2025 Jappie Klooster";
      maintainer = "hi@jappie.me";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/mcp-hoogle#readme";
      url = "";
      synopsis = "MCP server exposing Hoogle search over local project dependencies";
      description = "An MCP (Model Context Protocol) server that exposes Hoogle search\nover your project's local Haskell dependencies. Run from within a\nnix-shell to give AI assistants type-aware search across all packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hoogle" or (errorHandler.buildDepError "hoogle"))
          (hsPkgs."mcp-server" or (errorHandler.buildDepError "mcp-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      exes = {
        "mcp-hoogle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mcp-hoogle" or (errorHandler.buildDepError "mcp-hoogle"))
            (hsPkgs."hoogle" or (errorHandler.buildDepError "hoogle"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."mcp-hoogle" or (errorHandler.buildDepError "mcp-hoogle"))
            (hsPkgs."hoogle" or (errorHandler.buildDepError "hoogle"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }