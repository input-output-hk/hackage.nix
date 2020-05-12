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
      specVersion = "1.2";
      identifier = { name = "infinity"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "austin@youareinferior.net";
      author = "Austin Seipp";
      homepage = "";
      url = "";
      synopsis = "";
      description = "a tiny, pluggable irc bot";
      buildType = "Custom";
      };
    components = {
      exes = {
        "infinity" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."irc" or (errorHandler.buildDepError "irc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }