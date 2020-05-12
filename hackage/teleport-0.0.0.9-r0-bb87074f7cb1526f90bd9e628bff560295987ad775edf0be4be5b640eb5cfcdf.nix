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
      identifier = { name = "teleport"; version = "0.0.0.9"; };
      license = "MIT";
      copyright = "2010 Siddharth Bhat";
      maintainer = "siddu.druid@gmail.com";
      author = "Siddharth Bhat";
      homepage = "https://github.com/bollu/teleport#readme";
      url = "";
      synopsis = "A tool to quickly switch between directories";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "warp-haskell-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."warp-haskell" or (errorHandler.buildDepError "warp-haskell"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "warp-haskell-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."warp-haskell" or (errorHandler.buildDepError "warp-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }